///@desc universal step actions

// get inputs, check for and deplete juice

var _w = mgr_input.key_up;
if (W_juice <= 0) _w = 0;
W_juice -= _w * juice_cost_WASD;

var _a = mgr_input.key_left;
if (A_juice <= 0) _a = 0;
A_juice -= _a * juice_cost_WASD;

var _s = mgr_input.key_down;
if (S_juice <= 0) _s = 0;
S_juice -= _s * juice_cost_WASD;

var _d = mgr_input.key_right;
if (D_juice <= 0) _d = 0;
D_juice -= _d * juice_cost_WASD;

var _lc = mgr_input.key_lc;
var _lcp = mgr_input.key_lc_pressed;
if (lc_juice <= 0) 
{
	_lc = 0;
	_lcp = 0;
}
lc_juice -= _lc * juice_cost_equipment;

var _rc = mgr_input.key_rc;
var _rcp = mgr_input.key_rc_pressed;
if (rc_juice <= 0) 
{
	_rc = 0;
	_rcp = 0;
}
rc_juice -= _rc * juice_cost_equipment;

//write to input variables based on whether you have juice
input_x = _d - _a;
input_y = _s - _w;
input_lc = _lc;
input_rc = _rc;
input_lc_pressed = _lcp;
input_rc_pressed = _rcp;

if input_x > 0
{
	sprite_index = spr_player_body_walk_right;
	image_speed = 1;
	facing = 0;
}
else if input_x < 0
{
	sprite_index = spr_player_body_walk_left;
	image_speed = 1;
	facing = 2;
}
else if input_y > 0
{
	sprite_index = spr_player_body_walk_fwd;
	image_speed = 1;
	facing = 3;
}
else if input_y < 0
{
	sprite_index = spr_player_body_walk_back;
	image_speed = 1;
	facing = 1;
}
else
{
	sprite_index = spr_player_body_idle;
	image_speed = 0;
	if (facing == 1) image_index = 1;
	else image_index = 0;
}

//collect pickups
collectPickups();

//check floor type
floortype = getFloorType(x,y);
//image_angle = 45*floortype; //funny debug

event_user(floortype);
//event_user(0);