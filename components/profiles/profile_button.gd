extends Button
class_name ProfileButton


# All the textures for the special characters
const _TEXTURES: Array[CompressedTexture2D] = [
	preload("uid://df0fvqebqiomi"),
	preload("uid://cgpv2vll6qxhe"),
	preload("uid://frlgke42e0co"),
	preload("uid://c4dsbnxccrcua"),
	preload("uid://bpuj4a2rfn0r7"),
	preload("uid://fr3iw5cj7rlw"),
	preload("uid://b2mrjvgcjv6m8"),
	preload("uid://0mlgutjd6l66")
]


const _CHAR_ANONYMOUS: CompressedTexture2D = preload("uid://7uwvimmk7b2v")


func setup(character: String, alias: String, age: String, body: String, looking_for: String) -> void:
	%Alias.text = alias
	%Age.text = age
	%Body.text = body
	%LookingFor.text = looking_for
	
	var char_index := Constants.CHAR_NAMES.find(character)
	if char_index >= 0:
		var texture := _TEXTURES[char_index]
		icon = texture
	else:
		icon = _CHAR_ANONYMOUS


func _on_pressed() -> void:
	AudioPlayer.play_sfx(AudioPlayer.SFX.ProfileSelected)
