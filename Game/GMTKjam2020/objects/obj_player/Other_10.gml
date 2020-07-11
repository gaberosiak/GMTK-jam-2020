/// @description neutral state

//move prep
move_dir = point_direction(0,0,input_x,input_y);

if (input_x != 0 || input_y != 0) move_speed = walk_speed;
else move_speed = 0;

dx = lengthdir_x(move_speed,move_dir);
dy = lengthdir_y(move_speed,move_dir);

//collision check
//to come

//move commit
x += dx;
y += dy;

//animate
image_angle = move_dir;

