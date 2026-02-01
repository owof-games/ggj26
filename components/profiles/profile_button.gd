extends Button
class_name ProfileButton


# All the textures for the special characters
const _TEXTURES: Array[CompressedTexture2D] = [
	preload("uid://cpn11df043lg1"),
	preload("uid://bju44v2wcw73l"),
	preload("uid://c7xwmm8jdmr21"),
	preload("uid://daee4adah8nbw"),
	preload("uid://bmsj8dydna4vq"),
	preload("uid://bnnn042o2bicl"),
	preload("uid://x1vgqivcu7tm"),
	preload("uid://byxu76405uqkq")
]

const _CHAR_ANONYMOUS: CompressedTexture2D = preload("uid://qomxhu5es3gm")

@onready var _image_texture_rect: TextureRect = %ImageTextureRect



func setup(character: String, alias: String, age: String, body: String, looking_for: String) -> void:
	%Alias.text = alias
	%Age.text = age
	%Body.text = body
	%LookingFor.text = looking_for
	
	var char_index := Constants.CHAR_NAMES.find(character)
	print("ho cercato character %s e ho trovato indice %d" % [character, char_index])
	if char_index >= 0:
		var texture := _TEXTURES[char_index]
		_image_texture_rect.texture = texture
	else:
		_image_texture_rect.texture = _CHAR_ANONYMOUS


func _on_pressed() -> void:
	AudioPlayer.play_sfx(AudioPlayer.SFX.ProfileSelected)
