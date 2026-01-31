extends Button
class_name TopicButton


@export var topic_name: String


func setup(active_topics: Array[String]):
	button_pressed = active_topics.has(topic_name)
