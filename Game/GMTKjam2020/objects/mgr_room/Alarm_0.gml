/// @description write to objects in room

obj_player.W_juice = W_juice;
obj_player.A_juice = A_juice;
obj_player.S_juice = S_juice;
obj_player.D_juice = D_juice;
obj_player.lc_juice = lc_juice;
obj_player.rc_juice = rc_juice;

////I think I can comment this out --> instead of spawning equipment from object just put in room. More intuitive
//obj_player.equipment = equipment;
//with obj_player
//{
//	if equipment != noone
//	{
//		instance_create_layer(x,y,"Instances_top",equipment);
//	}
//}

obj_end.next_level = next_level;
