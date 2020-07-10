///@description set_movement_intent
///@arg xinput
///@arg yinput

var _xinput = argument0;
var _yinput = argument1;

// x intent

if (_xinput > 0) {
	xvel = min(movespeed, xvel + moveaccel);
} else if (_xinput < 0) {
	xvel = max(-movespeed, xvel - moveaccel);	
} else if (abs(xvel) >= movedecel) {
	xvel = xvel - movedecel * sign(xvel);
} else {
	xvel = 0;
}

// y intent

if (_yinput > 0) {
	yvel = min(movespeed, yvel + moveaccel);
} else if (_yinput < 0) {
	yvel = max(-movespeed, yvel - moveaccel);
} else if (abs(yvel) >= movedecel) {
	yvel = yvel - movedecel * sign(yvel);
} else {
	yvel = 0;
}
