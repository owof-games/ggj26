extends Control
class_name MyProfile


signal topic_pressed(topic_name: String)
signal chat_pressed


@onready var topic_buttons: Array[TopicButton] = [
	%Button, %Button2, %Button3, %Button4, %Button5, %Button6, %Button7, %Button8
]
@onready var _name: Label = %Name
@onready var _age: Label = %Age
@onready var _body: Label = %Body
@onready var _in_search_of: Label = %InSearchOf
@onready var _description: Label = %Description



func setup(topics: Array[String], active_topics: InkList, my_name: String, my_age: String, my_body: String, my_in_search_of: String, description: String):
	for topic_button in topic_buttons:
		topic_button.setup(topics, active_topics)
	_name.text = my_name
	_age.text = my_age
	_body.text = my_body
	_in_search_of.text = my_in_search_of
	_description.text = description


func _on_button_topic_pressed(topic_name: String) -> void:
	topic_pressed.emit(topic_name)


func _on_chat_button_pressed() -> void:
	AudioPlayer.play_sfx(AudioPlayer.SFX.EnterChat)
	chat_pressed.emit()
