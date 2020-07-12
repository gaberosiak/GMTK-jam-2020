if instance_exists(obj_player)
{
	x = obj_player.x;
	y = obj_player.y + obj_player.shoulder_y;
}

aim_dir = point_direction(x,y,mouse_x,mouse_y);
if (aim_dir > 90 && aim_dir <270) image_yscale = -1;
else image_yscale = 1;

if (obj_player.W_juice + obj_player.A_juice + obj_player.S_juice + obj_player.D_juice + obj_player.lc_juice + obj_player.rc_juice <= 0)
{
	aim_dir = 345;
}
image_angle = aim_dir;