extends Button
class_name ChoiceBox


signal choice_pressed(choice_index: int)


var _choice_index: int


func setup(choice_text: String, choice_index: int) -> void:
	self.text = choice_text
	_choice_index = choice_index


func _on_pressed() -> void:
	choice_pressed.emit(_choice_index)
