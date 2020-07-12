menu = false;
menuroom = rm_start;

if room == menuroom
{
	menu = true;
	audio_play_sound(mus_menu1,2,1);
}
else if !audio_is_playing(mus_main1) audio_play_sound(mus_main1,2,1);