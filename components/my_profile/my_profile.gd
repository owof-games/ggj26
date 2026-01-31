extends Control
class_name MyProfile


@onready var topic_buttons: Array[TopicButton] = [
	%Button, %Button2, %Button3, %Button4, %Button5, %Button6, %Button7, %Button8
]


func setup(active_topics: Array[String]):
	for topic_button in topic_buttons:
		topic_button.setup(active_topics)
