///@desc collide
///@arg floor_type

var _floortype = argument0;

var _collision = false;

if (place_meeting(x+dx,y,obj_wall))
{
	while !place_meeting(x+sign(dx),y,obj_wall)
	{
		x += sign(dx);
	}
	dx = 0;
	_collision = true;
}

if (place_meeting(x,y+dy,obj_wall))
{
	while !place_meeting(x,y+sign(dy),obj_wall)
	{
		y += sign(dy);
	}
	dy = 0;
	_collision = true;
}

return _collision;