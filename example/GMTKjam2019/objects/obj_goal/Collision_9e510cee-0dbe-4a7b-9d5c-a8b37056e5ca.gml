if other.hive == true
{
	audio_stop_all();
	audio_play_sound(sfx_ding,10,false);
	room_goto(rm_end);
	mgr_score.friends = ds_list_size(obj_brain.hivemind);
}