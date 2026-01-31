extends Control
class_name Profiles


@onready var _profile_buttons: Array[ProfileButton] = [
	%ProfileButton, %ProfileButton2, %ProfileButton3, %ProfileButton4, %ProfileButton5, %ProfileButton6, %ProfileButton7, %ProfileButton8, %ProfileButton9
]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func setup(characters: Array[String]) -> void:
	if characters.size() != _profile_buttons.size():
		push_warning("Received %d characters from ink, and I have %d buttons to fill" % [characters.size(), _profile_buttons.size()])
	while characters.size() < _profile_buttons.size():
		characters.append("anonymous")
	for i in _profile_buttons.size():
		_profile_buttons[i].setup(characters[i], "alias", 33, "body", "looking_for")
