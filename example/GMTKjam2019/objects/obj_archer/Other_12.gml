/// @description act
image_speed = 0;
image_index = 0;

if acttimer <=0
{
	//this is the action
	var _projspeed = 10;
	var _projx = lengthdir_x(_projspeed,facing*90);
	var _projy = lengthdir_y(_projspeed,facing*90);
	var _hb = create_hitbox(x,y-12,1,1,120,0.5,_projx,_projy,self,true);
	attach_sprite_to_hitbox(_hb, spr_arrow, facing*90);
	//audio_play_sound(sfx_shoot,5,0);
	trytoplay(sfx_shoot);
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