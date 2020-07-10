///@desc hivemind_remove
///@arg instance_id

var _instance = argument0;
var _list = obj_brain.hivemind;
var _index = ds_list_find_index(_list, _instance);

if _index != -1
{
	ds_list_delete(_list,_index);
	_instance.hive = false;
	instance_destroy(_instance.nodeid);
	_instance.state = states.AI;
	//audio_play_sound(sfx_release,5,0);
	trytoplay(sfx_release);
}