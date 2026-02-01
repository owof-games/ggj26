extends Node


enum SFX {
	ProfileSelected,
	EnterChat
}

@onready var _audio_stream_player: AudioStreamPlayer = %AudioStreamPlayer
const _profile_selected_audio_stream: AudioStream = preload("uid://ca7lw6qymkt61")
const _enter_chat_audio_stream: AudioStream = preload("uid://plo7fsj38t2f")
var _audio_stream_playback_polyphonic: AudioStreamPlaybackPolyphonic


func _ready() -> void:
	_audio_stream_player.max_polyphony = (_audio_stream_player.stream as AudioStreamPolyphonic).polyphony
	_audio_stream_player.play()
	_audio_stream_playback_polyphonic = _audio_stream_player.get_stream_playback()
	print("AudioPlayer ready")


func play_sfx(sfx: SFX) -> void:
	var audio_stream: AudioStream
	match sfx:
		SFX.ProfileSelected:
			audio_stream = _profile_selected_audio_stream
		SFX.EnterChat:
			audio_stream = _enter_chat_audio_stream
		_:
			push_warning("Cannot find audio stream for sfx %s" % [sfx])
			return
	_audio_stream_playback_polyphonic.play_stream(audio_stream)
