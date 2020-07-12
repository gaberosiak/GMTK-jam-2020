//enum states {
//	neutral
//}

enum floors {
	normal,
	conveyor,
	ice,
	pit,
	crusher,
	goop
}

floortype = floors.normal;

//state = states.neutral;

//equipment = noone;

walk_speed = 4;

juice_cost_WASD = walk_speed;
juice_cost_equipment = 1;

input_x = 0;
input_y = 0;
input_lc = 0;
input_rc = 0;
input_lc_pressed = 0;
input_rc_pressed = 0;

//move_dir = 0;
//move_speed = 0;
dx = 0;
dy = 0;

flying = false;

W_juice = 0;
A_juice = 0;
S_juice = 0;
D_juice = 0;
lc_juice = 0;
rc_juice = 0;

//animation stuff
neck_y = -24;
shoulder_y = -20;
facing = 0;
