extends NinePatchRect
class_name ChatBox


@onready var _content: Control = %MarginContainer
@onready var _label: Label = %Label


func _process(_delta: float) -> void:
	custom_minimum_size = _content.size


func setup(text: String) -> void:
	_label.text = text
