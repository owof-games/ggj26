extends Node


enum SFX {
	ProfileSelected
}

@onready var _audio_stream_player: AudioStreamPlayer = %AudioStreamPlayer
const _profile_selected_audio_stream: AudioStream = preload("uid://ca7lw6qymkt61")
var _audio_stream_playback_polyphonic: AudioStreamPlaybackPolyphonic


func _ready() -> void:
	_audio_stream_player.max_polyphony = (_audio_stream_player.stream as AudioStreamPolyphonic).polyphony
	_audio_stream_player.play()
	_audio_stream_playback_polyphonic = _audio_stream_player.get_stream_playback()
	print("AudioPlayer ready")


func play_sfx(sfx: SFX) -> void:
	_audio_stream_playback_polyphonic.play_stream(_profile_selected_audio_stream)
