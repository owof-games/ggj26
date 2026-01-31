extends Button


func set_info(alias: String, age: int, body: String, looking_for: String) -> void:
	%Alias.text = alias
	%Age.text = str(age)
	%Body.text = body
	%LookingFor.text = looking_for
