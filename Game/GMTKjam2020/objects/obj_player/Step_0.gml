// get inputs and check for juice
var _w = mgr_input.key_up;
if (W_juice <= 0) _w = 0;
var _a = mgr_input.key_left;
if (A_juice <= 0) _a = 0;
var _s = mgr_input.key_down;
if (S_juice <= 0) _s = 0;
var _d = mgr_input.key_right;
if (D_juice <= 0) _d = 0;
var _lc = mgr_input.key_lc;
var _lcp = mgr_input.key_lc_pressed;
if (lc_juice <= 0) 
{
	_lc = 0;
	_lcp = 0;
}
var _rc = mgr_input.key_rc;
var _rcp = mgr_input.key_rc_pressed;
if (rc_juice <= 0) 
{
	_rc = 0;
	_rcp = 0;
}

input_x = _d - _a;
input_y = _s - _w;
input_lc = _lc;
input_rc = _rc;
input_lc_pressed = _lcp;
input_rc_pressed = _rcp;

//deplete juice --> to come

//check floor type
floortype = getFloorType(x,y);
//image_angle = 45*floortype; //funny debug

event_user(floortype);
//event_user(0);