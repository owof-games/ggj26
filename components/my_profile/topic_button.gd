extends Button
class_name TopicButton


signal topic_pressed(topic_name: String)


@export var topic_name: String


func setup(topics: Array[String], active_topics: InkList):
	visible = topics.has(topic_name)
	button_pressed = active_topics.ContainsItemNamed(topic_name)


func _on_pressed() -> void:
	topic_pressed.emit(topic_name)
