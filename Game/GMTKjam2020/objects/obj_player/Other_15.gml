/// @description goop floor

//move prep
//ortho move
dx = input_x * walk_speed * 0.5;
dy = input_y * walk_speed * 0.5;

//collision check
collide(floortype);

//move commit
x += dx;
y += dy;

//equipment --> in equipment object

//animate
//to come...

