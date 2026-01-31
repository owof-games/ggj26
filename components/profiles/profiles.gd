extends Control
class_name Profiles


@onready var _profile_buttons: Array[ProfileButton] = [
	%ProfileButton, %ProfileButton2, %ProfileButton3, %ProfileButton4, %ProfileButton5, %ProfileButton6, %ProfileButton7, %ProfileButton8, %ProfileButton9
]

signal profile_clicked(choice_index: int, alias: String, age: String, body: String, in_search_of: String)

var _latest_indices: Array[int]
var _latest_aliases: Array[String]
var _latest_ages: Array[String]
var _latest_bodies: Array[String]
var _latest_in_search_ofs: Array[String]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func setup(indices: Array[int], characters: Array[String], aliases: Array[String], ages: Array[String], bodies: Array[String], in_search_ofs: Array[String]) -> void:
	_latest_indices = indices
	_latest_aliases = aliases
	_latest_ages = ages
	_latest_bodies = bodies
	_latest_in_search_ofs = in_search_ofs
	if characters.size() != _profile_buttons.size():
		push_warning("Received %d characters from ink, and I have %d buttons to fill" % [characters.size(), _profile_buttons.size()])
	while characters.size() < _profile_buttons.size():
		characters.append("anonymous")
	for i in _profile_buttons.size():
		_profile_buttons[i].setup(characters[i], aliases[i], ages[i], bodies[i], in_search_ofs[i])


func button_pressed(i: int) -> void:
	var index := _latest_indices[i]
	var alias := _latest_aliases[i]
	var age := _latest_ages[i]
	var body := _latest_bodies[i]
	var in_search_of := _latest_in_search_ofs[i]
	profile_clicked.emit(index, alias, age, body, in_search_of)


func _on_profile_button_pressed() -> void:
	button_pressed(0)


func _on_profile_button_2_pressed() -> void:
	button_pressed(1)


func _on_profile_button_3_pressed() -> void:
	button_pressed(2)


func _on_profile_button_4_pressed() -> void:
	button_pressed(3)


func _on_profile_button_5_pressed() -> void:
	button_pressed(4)


func _on_profile_button_6_pressed() -> void:
	button_pressed(5)


func _on_profile_button_7_pressed() -> void:
	button_pressed(6)


func _on_profile_button_8_pressed() -> void:
	button_pressed(7)


func _on_profile_button_9_pressed() -> void:
	button_pressed(8)
