///@description move_collide
//take object's xvel and yvel, checks for collision with walls, and moves the object

var _precision = 0.1;

// x hard collision

if place_meeting(x + xvel, y, obj_wall) {
	while !place_meeting(x + sign(xvel) * _precision, y, obj_wall) {
		x += sign(xvel) * _precision
	}
	xvel = 0;
}

// y hard collision

if place_meeting(x,y + yvel, obj_wall) {
	while !place_meeting(x, y + sign(yvel) * _precision, obj_wall) {
		y += sign(yvel) * _precision
	}
	yvel = 0;
}

x += xvel;
y += yvel;