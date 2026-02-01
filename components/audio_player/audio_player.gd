extends Node


enum SFX {
	ProfileSelected,
	EnterChat,
	ChatContinue,
	ChatChoice,
	MyProfileEnableTopic,
	MyProfileDisableTopic
}

@onready var _audio_stream_player: AudioStreamPlayer = %AudioStreamPlayer
var _audio_stream_playback_polyphonic: AudioStreamPlaybackPolyphonic
const _profile_selected_audio_stream: AudioStream = preload("uid://ca7lw6qymkt61")
const _enter_chat_audio_stream: AudioStream = preload("uid://plo7fsj38t2f")
const _chat_continue_audio_stream: AudioStream = preload("uid://4si5lmik10ai")
const _chat_choice_audio_stream: AudioStream = preload("uid://mgrqrkranijp")
const _my_profile_enable_topic_audio_stream: AudioStream = preload("uid://jeuf5lcgcf2y")
const _my_profile_disable_topic_audio_stream: AudioStream = preload("uid://do2pa2a61njds")


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
		SFX.ChatContinue:
			audio_stream = _chat_continue_audio_stream
		SFX.ChatChoice:
			audio_stream = _chat_choice_audio_stream
		SFX.MyProfileEnableTopic:
			audio_stream = _my_profile_enable_topic_audio_stream
		SFX.MyProfileDisableTopic:
			audio_stream = _my_profile_disable_topic_audio_stream
		_:
			push_warning("Cannot find audio stream for sfx %s" % [sfx])
			return
	_audio_stream_playback_polyphonic.play_stream(audio_stream)
