/// @description act
image_speed = 0;
image_index = 0;

if acttimer <=0
{
	//this is the action
	var _atkx = 0;
	var _atky = 0;
	switch facing
	{
		case 0:
		{
			_atkx = x + 20;
			_atky = y - 10;
			break;
		}
		case 1:
		{
			_atkx = x;
			_atky = y - 30;
			break;
		}
		case 2:
		{
			_atkx = x - 20;
			_atky = y - 10;
			break;
		}
		case 3:
		{
			_atkx = x;
			_atky = y + 10;
			break;
		}
		
	}
	var _hb = create_hitbox(_atkx,_atky,1,3,10,2,0,0,self,false);
	attach_sprite_to_hitbox(_hb, spr_sword, facing*90);
	//audio_play_sound(sfx_slash,5,0);
	trytoplay(sfx_slash);
}

if place_meeting(x,y,obj_hitbox)
{
	get_hit();
}

acttimer++;
if acttimer >= actlength
{
	switch hive
	{
		case 1: state = states.control; break;
		case 0: state = states.AI; break;
	}
}

if !hive 
{
	//capture = mgr_input.button2;

	if (collision_circle(x+xcom,y+ycom,capturerange,obj_node,false,true) && hp <= hp_weak)
	{
		//shader goes here
		canbecaptured = 1;
		if capture
		{
			hivemind_add(id);
		}
	} else canbecaptured = 0;
}