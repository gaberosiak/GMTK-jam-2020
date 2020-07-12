if (menu == true && room != menuroom)
{
	menu = false;
	audio_play_sound(mus_main1,2,1);
	audio_stop_sound(mus_menu1);
}
else if (menu == false && room == menuroom)
{
	menu = true;
	audio_play_sound(mus_menu1,2,1);
	audio_stop_sound(mus_main1);
}




//if room == rm_start
//{
//	menu = true;
//	audio_play_sound(mus_menu1,2,1);
//}
//else audio_play_sound(mus_main1,2,1);