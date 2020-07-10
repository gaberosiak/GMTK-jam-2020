/// @description stun

//sit there

image_speed = 0;
image_index = 0;

xvel = xvel - movedecel * sign(xvel);
if (abs(xvel) < movedecel) xvel = 0;
yvel = yvel - movedecel * sign(yvel);
if (abs(yvel) < movedecel) yvel = 0;
move_collide();

stuntimer++;
if stuntimer >= stunlength
{
	hp = min(hp+1,hp_max);
	state = states.AI;
}

var _capturecooldown = 15;
if (collision_circle(x+xcom,y+ycom,capturerange,obj_node,false,true) && hp <= hp_weak && stuntimer >= _capturecooldown)
{
	//shader goes here
	canbecaptured = 1;
	if capture
	{
		hivemind_add(id);
	}
} else canbecaptured = 0;