extends Control


@onready var story_engine: StoryEngine = %StoryEngine


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	story_engine.Continue()
