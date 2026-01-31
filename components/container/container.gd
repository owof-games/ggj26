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


func _on_story_engine_choose_character(characters: PackedStringArray) -> void:
	if _current_child_scene != null:
		_current_child_scene.queue_free()
	var profiles: Profiles = _profiles_scene.instantiate()
	%MobileScreen.add_child(profiles)
	#await profiles.ready
	profiles.setup(characters)
