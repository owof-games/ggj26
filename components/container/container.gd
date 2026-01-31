extends Control


@onready var story_engine: StoryEngine = %StoryEngine
@export var override_story: InkStory

var _profiles_scene: PackedScene = preload("uid://y16e7cyb1kjn")


var _current_child_scene: Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# used in the museum to load the test story
	if override_story != null:
		story_engine.OverrideStory(override_story)
	story_engine.Continue()


func _on_story_engine_choose_character(indices: PackedInt32Array, characters: PackedStringArray, aliases: PackedStringArray, ages: PackedInt32Array, bodies: PackedStringArray, in_search_ofs: PackedStringArray) -> void:
	if _current_child_scene != null:
		_current_child_scene.queue_free()
	var profiles: Profiles = _profiles_scene.instantiate()
	%MobileScreen.add_child(profiles)
	profiles.setup(indices, characters, aliases, ages, bodies, in_search_ofs)
	profiles.profile_clicked.connect(_on_profile_clicked)


func _on_profile_clicked(choice_index: int) -> void:
	print("Choice taken: %d" % [choice_index])
