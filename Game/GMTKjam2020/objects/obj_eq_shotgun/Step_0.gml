/// @description 
event_inherited();

if obj_player.input_lc_pressed
{
	var _muzzle_x = x + lengthdir_x(32,image_angle);
	var _muzzle_y = y + lengthdir_y(32,image_angle);
	var _bullet = instance_create_layer(_muzzle_x,_muzzle_y,"Instances_top",obj_bullet);
	_bullet.dir = image_angle;
	_bullet.image_angle = _bullet.dir;
	_bullet.vel = 12;
	
	////multiple bullets
	//for (var i = 0; i < 5; i++)
	//{
	//	var _bullet = instance_create_layer(_muzzle_x,_muzzle_y,"Instances_top",obj_bullet);
	//	_bullet.dir = image_angle + random_range(-10, 10);
	//	_bullet.image_angle = _bullet.dir;
	//	_bullet.vel = 12;
	//}
	if obj_player.floortype == floors.ice
	{
		obj_player.dx = -lengthdir_x(4,image_angle)
		obj_player.dy = -lengthdir_y(4,image_angle)
	}
}