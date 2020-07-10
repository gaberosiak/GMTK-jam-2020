/// @description player controlled


var _xinput = mgr_input.xinput
var _yinput = mgr_input.yinput

if _xinput != 0
{
	image_xscale = _xinput;
}

if (_xinput != 0 || _yinput !=0)
{
	image_speed = 1;
	facing = floor(point_direction(0,0,_xinput,_yinput)/90);
} else 
{
	image_speed = 0;
	image_index = 0;
}

if mgr_input.button1
{
	state = states.act;
	acttimer = 0;
}

if place_meeting(x,y,obj_hitbox)
{
	get_hit();
}

set_movement_intent(_xinput,_yinput);
move_collide()


