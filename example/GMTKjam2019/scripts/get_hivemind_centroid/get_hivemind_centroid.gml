///@desc get_hivemind_centroid
var _list = obj_brain.hivemind;
var _hive_size = ds_list_size(_list);
centroid_x = 0;
centroid_y = 0;

for (var i = 0; i<_hive_size; i++)
{
	var _instance = ds_list_find_value(_list,i)
	var _x = _instance.x;
	var _y = _instance.y;
	centroid_x += _x/_hive_size;
	centroid_y += _y/_hive_size;
}