///@desc trytoplay
///@arg sound

var _sound = argument0;

if !audio_is_playing(_sound)
{
	audio_play_sound(_sound,5,0);
} else if (variable_instance_exists(self,hive) && hive == true)
{
	audio_stop_sound(_sound);
	audio_play_sound(_sound,5,0);
}