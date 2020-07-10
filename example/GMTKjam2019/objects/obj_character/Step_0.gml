capture = mgr_input.button2;

if hive = true
{
	canbecaptured = 0;
	//sever if too far from brain
	if !collision_circle(x+xcom, y+ycom, obj_brain.leash, obj_brain, false, true)
	{
		hivemind_remove(id);
		state = states.stun;
		stuntimer = 0;
	}
} 


event_user(state);

