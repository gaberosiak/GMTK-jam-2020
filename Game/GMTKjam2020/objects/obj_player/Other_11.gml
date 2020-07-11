/// @description conveyor floor


//move prep
//ortho move
dx = input_x * walk_speed;
dy = input_y * walk_speed

var _conveyor_instance = instance_position(x,y,obj_fl_conveyor);
if _conveyor_instance != noone
{
	var _conveyor_speed = _conveyor_instance.conveyor_speed;
	var _conveyor_angle = _conveyor_instance.image_angle;
	var _cardinal = round(_conveyor_angle/90) mod 4;
	switch _cardinal
	{
		case 0: dx += _conveyor_speed; break;
		case 1: dy -= _conveyor_speed; break;
		case 2: dx -= _conveyor_speed; break;
		case 3: dy += _conveyor_speed; break;		
	}
}


//collision check
collide(floortype);

//move commit
x += dx;
y += dy;

//equipment --> in equipment object

//animate
//to come...

