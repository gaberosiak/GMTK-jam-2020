///@desc AI controlled

if alarm[1] <=0
{
	AI_action = choose(0,1,2);
	AI_timer = 15 * irandom(8);
	alarm[1] = AI_timer;
	AI_xinput = 0;
	AI_yinput = 0;
	switch AI_action
	{
		case 0:
		{
			//move
			AI_xinput = choose (-1,0,1);
			AI_yinput = choose (-1,0,1);
			break;
		}
		case 1:
		{
			//act
			facing = irandom(3);
			state = states.act;
			break;
		}
		case 2:
		{
			//rest
			//do nothing
			break;
		}		
	}
}

if AI_xinput != 0 || AI_yinput !=0
{
	facing = floor(point_direction(0,0,AI_xinput,AI_yinput)/90);
	image_speed = 1;
} else 
{
	image_speed = 0;
	image_index = 0;
}

set_movement_intent(AI_xinput,AI_yinput)
move_collide();




if (collision_circle(x+xcom,y+ycom,capturerange,obj_node,false,true) && hp <= hp_weak)
{
	//shader goes here
	canbecaptured = 1;
	if capture
	{
		hivemind_add(id);
	}
} else canbecaptured = 0;

if place_meeting(x,y,obj_hitbox)
{
	get_hit();
}