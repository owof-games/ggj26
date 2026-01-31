extends Control


@onready var story_engine: StoryEngine = %StoryEngine
@export var override_story: InkStory


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# used in the museum to load the test story
	if override_story != null:
		story_engine.OverrideStory(override_story)
	story_engine.Continue()


func _on_story_engine_choose_character(characters: PackedStringArray) -> void:
	pass # Replace with function body.
