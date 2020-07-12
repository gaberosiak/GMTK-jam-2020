if instance_exists(obj_player)
{
	x = obj_player.x;
	y = obj_player.y + obj_player.shoulder_y;
}

aim_dir = point_direction(x,y,mouse_x,mouse_y);
image_angle = aim_dir;