/// @description room variables

//all these variables should be set in the creation code of the instance
//juice levels
W_juice = 0;
A_juice = 0;
S_juice = 0;
D_juice = 0;
lc_juice = 0;
rc_juice = 0;

level_name = "level name";

//equipment
//equipment = obj_eq_gun;

//next level
next_level = room;

//use an alarm to do the actual setup on the next frame to make sure objects being written to exist
alarm[0] = 1;