extends Control
class_name Chat


signal continue_button_pressed
signal choice_pressed(choice_index: int)


var _chat_box_1_scene: PackedScene = preload("uid://b6af3jd5vdg3n")
var _chat_box_2_scene: PackedScene = preload("uid://c7n05vr6udce")
var _choice_box_scene: PackedScene = preload("uid://cmwi5jl87bfp1")
@onready var _chat_container: VBoxContainer = %ChatContainer
@onready var _continue_button: Button = %ContinueButton
@onready var _choices_container: VBoxContainer = %ChoicesContainer




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func step(is_from_me: bool, text: String, choices: Array[String]) -> void:
	var scene: ChatBox
	if is_from_me:
		scene = _chat_box_1_scene.instantiate()
	else:
		scene = _chat_box_2_scene.instantiate()

	_chat_container.add_child(scene)

	if not scene.is_node_ready():
		await scene.ready

	scene.setup(text)
	
	_continue_button.visible = choices.size() == 0
	
	for previous_choice in _choices_container.get_children():
		previous_choice.queue_free()
	for i in range(choices.size()):
		var choice := choices[i]
		var choice_box: ChoiceBox = _choice_box_scene.instantiate()
		choice_box.setup(choice, i)
		_choices_container.add_child(choice_box)
		choice_box.choice_pressed.connect(_choice_pressed)


func _on_continue_button_pressed() -> void:
	continue_button_pressed.emit()


func _choice_pressed(choice_index: int) -> void:
	choice_pressed.emit(choice_index)
