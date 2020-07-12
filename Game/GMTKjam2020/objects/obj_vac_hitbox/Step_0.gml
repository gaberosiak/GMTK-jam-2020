/// @description 


if instance_exists(obj_eq_vacuum)
{
	var _parent = instance_nearest(x,y,obj_eq_vacuum);
	x = _parent.x;
	y = _parent.y;
	image_angle = _parent.image_angle;
}
else instance_destroy();
