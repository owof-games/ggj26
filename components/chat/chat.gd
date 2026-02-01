extends Control
class_name Chat


signal continue_button_pressed
signal choice_pressed(choice_index: int)
signal quit


var _chat_box_1_scene: PackedScene = preload("uid://dxqarq0xfp6b6")
var _chat_box_2_scene: PackedScene = preload("uid://vyqm7g5g6hr1")
var _choice_box_scene: PackedScene = preload("uid://cmwi5jl87bfp1")
@onready var _chat_container: VBoxContainer = %ChatContainer
@onready var _continue_button: Button = %ContinueButton
@onready var _choices_panel_container: PanelContainer = %PanelContainer
@onready var _choices_container: VBoxContainer = %ChoicesContainer
@onready var _quit_button: Button = %QuitButton
@onready var _alias: Label = %Alias
@onready var _age: Label = %Age
@onready var _body: Label = %Body
@onready var _in_search_of: Label = %InSearchOf
@onready var _scroll_container: ScrollContainer = %ScrollContainer
@onready var _vertical_scrollbar: ScrollBar = %ScrollContainer.get_v_scroll_bar()
var _latest_vertical_scrollbar_max_length: float


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_latest_vertical_scrollbar_max_length = _vertical_scrollbar.max_value
	_vertical_scrollbar.changed.connect(_scrollbar_changed)


func _scrollbar_changed():
	if _latest_vertical_scrollbar_max_length == _vertical_scrollbar.max_value:
		return
	_latest_vertical_scrollbar_max_length = _vertical_scrollbar.max_value
	create_tween() \
		.bind_node(_scroll_container) \
		.set_trans(Tween.TRANS_LINEAR) \
		.tween_property(_scroll_container, "scroll_vertical", _latest_vertical_scrollbar_max_length, 0.5)


func setup(alias: String, age: String, body: String, in_search_of: String) -> void:
	_alias.text = alias
	_age.text = age
	_body.text = body
	_in_search_of.text = in_search_of


func step(is_from_me: bool, text: String, choices: Array[String]) -> void:
	# create the chat box
	var scene: ChatBox
	if is_from_me:
		scene = _chat_box_1_scene.instantiate()
	else:
		scene = _chat_box_2_scene.instantiate()

	# add the chat box
	_chat_container.add_child(scene)

	# wait for it to be added in the scene
	if not scene.is_node_ready():
		await scene.ready

	# fill its contents
	scene.setup(text)

	# enable/disable continue button
	_continue_button.visible = choices.size() == 0

	# enable/disable choices
	for previous_choice in _choices_container.get_children():
		previous_choice.queue_free()
	for i in range(choices.size()):
		var choice := choices[i]
		var choice_box: ChoiceBox = _choice_box_scene.instantiate()
		choice_box.setup(choice, i)
		_choices_container.add_child(choice_box)
		choice_box.choice_pressed.connect(_choice_pressed)
	_choices_panel_container.visible = choices.size()


func _on_continue_button_pressed() -> void:
	AudioPlayer.play_sfx(AudioPlayer.SFX.ChatContinue)
	continue_button_pressed.emit()


func _choice_pressed(choice_index: int) -> void:
	AudioPlayer.play_sfx(AudioPlayer.SFX.ChatChoice)
	choice_pressed.emit(choice_index)


func show_quit() -> void:
	_continue_button.visible = false
	for choice in _choices_container.get_children():
		choice.queue_free()
	_quit_button.visible = true


func _on_quit_button_pressed() -> void:
	AudioPlayer.play_sfx(AudioPlayer.SFX.ChatContinue)
	quit.emit()
