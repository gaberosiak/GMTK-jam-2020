get_hivemind_centroid();
x = centroid_x;
y = centroid_y;

if (ds_list_empty(hivemind) && instance_exists(obj_character))
{
	var _target = instance_nearest(x,y,obj_character);
	x = _target.x;
	y = _target.y;
	hivemind_add(_target);
}

