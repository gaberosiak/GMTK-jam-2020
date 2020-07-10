enum states
{
	control,
	AI,
	act,
	oof,
	stun
}
state = states.AI;

hive = false;

movespeed = 1.5;
moveaccel = 0.2;
movedecel = 0.2;
xvel = 0;
yvel = 0;

image_speed = 0;
image_index = 0;

xcom = 0;
ycom = -9;

nodeid = noone;

canbecaptured = 0;

hp_max = 4;
hp = 3;
hp_weak = 2;
invulnerability = 60;

facing = 0;

acttimer = 0;
actlength = 15;

ooftimer = 0;
ooflength = 30;

capturerange = 64;
capture = false;

stuntimer = 0;
stunlength = 120;

AI_action = 0;
AI_timer = 0;
AI_xinput = 0;
AI_yinput = 0;