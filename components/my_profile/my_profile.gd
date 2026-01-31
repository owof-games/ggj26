extends Control
class_name MyProfile


signal topic_pressed(topic_name: String)
signal chat_pressed


@onready var topic_buttons: Array[TopicButton] = [
	%Button, %Button2, %Button3, %Button4, %Button5, %Button6, %Button7, %Button8
]


func setup(topics: Array[String], active_topics: InkList):
	for topic_button in topic_buttons:
		topic_button.setup(topics, active_topics)


func _on_button_topic_pressed(topic_name: String) -> void:
	topic_pressed.emit(topic_name)


func _on_chat_button_pressed() -> void:
	chat_pressed.emit()
