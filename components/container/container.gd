extends Control


@onready var story_engine: StoryEngine = %StoryEngine
@export var override_story: InkStory

var _profiles_scene: PackedScene = preload("uid://y16e7cyb1kjn")
var _chat_scene: PackedScene = preload("uid://d03lout7yjecq")
var _character_personalization: PackedScene = preload("uid://bi1lkscnsof5v")


var _current_child_scene: Node

enum State {
	Profiles,
	Chat,
	MyProfile
}

var _state: State


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# used in the museum to load the test story
	if override_story != null:
		story_engine.OverrideStory(override_story)
	story_engine.Continue()


func _on_story_engine_choose_character(indices: PackedInt32Array, characters: PackedStringArray, aliases: PackedStringArray, ages: PackedInt32Array, bodies: PackedStringArray, in_search_ofs: PackedStringArray) -> void:
	await _wait_for_chat()
	_clean_current_scene()
	var profiles: Profiles = _profiles_scene.instantiate()
	%MobileScreen.add_child(profiles)
	profiles.setup(indices, characters, aliases, ages, bodies, in_search_ofs)
	profiles.profile_clicked.connect(_on_profile_clicked)
	_current_child_scene = profiles
	_state = State.Profiles


func _on_profile_clicked(choice_index: int) -> void:
	print("Choice taken: %d" % [choice_index])
	story_engine.PickChoice(choice_index)
	_clean_current_scene()
	var chat: Chat = _chat_scene.instantiate()
	chat.continue_button_pressed.connect(_chat_continue_button_pressed)
	chat.choice_pressed.connect(_chat_choice_pressed)
	%MobileScreen.add_child(chat)
	_current_child_scene = chat
	if not chat.is_node_ready():
		await chat.ready
	_state = State.Chat
	story_engine.Continue.call_deferred()


func _chat_continue_button_pressed():
	story_engine.Continue()


func _chat_choice_pressed(choice_index: int):
	story_engine.PickChoice(choice_index)
	story_engine.Continue()


func _on_story_engine_generic_text_line(line: String, choices: PackedStringArray) -> void:
	if _state != State.Chat:
		push_warning("Received line when not in chat: %s" % [line])
		return
	var _chat: Chat = _current_child_scene

	var parts := line.split(":")
	if parts.size() != 2:
		push_warning("Could not parse chat line: %s" % [line])
		story_engine.Continue()
		return

	var who := parts[0].strip_edges().to_lower()
	var text := parts[1].strip_edges()
	_chat.step(who == "pg", text, choices)



func _on_story_engine_character_personalization(alias: String, age: String, body: String, in_search_of: String, topics: Array[String]) -> void:
	await _wait_for_chat()
	var character_personalization: MyProfile
	if _state == State.MyProfile:
		character_personalization = _current_child_scene
	else:
		_clean_current_scene()
		character_personalization = _character_personalization.instantiate()
		character_personalization.topic_pressed.connect(_topic_pressed)
		character_personalization.chat_pressed.connect(_chat_pressed)
		%MobileScreen.add_child(character_personalization)
	var active_topics := story_engine.GetActiveTopics()
	character_personalization.setup(topics, active_topics, alias, age, body, in_search_of)
	_current_child_scene = character_personalization
	_state = State.MyProfile


func _topic_pressed(topic_name: String):
	story_engine.PickChoiceByName(topic_name)
	story_engine.Continue()


func _chat_pressed():
	story_engine.PickChoiceByName("Chat")
	story_engine.Continue()


func _clean_current_scene() -> void:
	if _current_child_scene != null:
		_current_child_scene.queue_free()
	_current_child_scene = null


func _wait_for_chat() -> void:
	if _state != State.Chat:
		return
	var chat: Chat = _current_child_scene
	chat.show_quit()
	await chat.quit
