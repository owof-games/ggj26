extends Control


const _main_scene = preload("uid://ci8a1evxcfr0v")


func _on_start_button_pressed() -> void:
	var main_scene = _main_scene.instantiate()
	get_tree().root.add_child(main_scene)
	queue_free()


func _on_quit_button_pressed() -> void:
	get_tree().root.propagate_notification(NOTIFICATION_WM_CLOSE_REQUEST)
	get_tree().quit()
