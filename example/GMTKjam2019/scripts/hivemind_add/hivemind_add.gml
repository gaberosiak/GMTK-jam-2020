///@desc hivemind_add
///@arg instance_id

var _instance = argument0;
var _list = obj_brain.hivemind;

if ds_list_find_index(_list, _instance) == -1
{
	ds_list_add(_list,_instance);
	_instance.hive = true;
	var _node = instance_create_layer(_instance.x,_instance.y,"Nodes",obj_node)
	_node.target = _instance;
	_instance.nodeid = _node;
	_instance.state = states.control;
	//audio_play_sound(sfx_capture,5,0);
	trytoplay(sfx_capture);
}