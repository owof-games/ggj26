extends Control
class_name Chat


var _chat_box_1_scene: PackedScene = preload("uid://b6af3jd5vdg3n")
var _chat_box_2_scene: PackedScene = preload("uid://c7n05vr6udce")
@onready var _chat_container: VBoxContainer = %ChatContainer


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
