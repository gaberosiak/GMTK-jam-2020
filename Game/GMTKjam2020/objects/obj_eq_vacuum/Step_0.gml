/// @description 
event_inherited();

if obj_player.input_lc
{
	//suck sound
	//var _playsuck = random(1);
	//if (_playsuck > 0.4) 
	//{
	//	audio_sound_pitch(sfx_ssuccc,random_range(0.6,1));
	//	audio_play_sound(sfx_ssuccc,6,false);
	//}

	with obj_vac_hitbox
	{
		sprite_index = spr_suck_effect;
		//suck pickups
		var _list = ds_list_create();
		var _num = instance_place_list(x, y, obj_pickup, _list, false);
		if _num > 0
		    {
		    for (var i = 0; i < _num; ++i;)
		        {
					var _inst = _list[| i];
					var _dist = point_distance(x,y,_inst.x,_inst.y);
					var _angle = point_direction(x,y,_inst.x,_inst.y);
					var _step = max(0, (vac_force * (vac_reach - _dist) / vac_reach));
					//var _step = (vac_force * (vac_reach - _dist) / vac_reach);
					if (_dist < vac_force) _step = 0;
					_inst.x -= lengthdir_x(_step,_angle);
					_inst.y -= lengthdir_y(_step,_angle);
		        }
		    }
		ds_list_destroy(_list);
		
		//suck enemies
		var _list = ds_list_create();
		//var _num = instance_place_list(x, y, obj_enemy, _list, false);
		//^ this is fucky with the ground enemy's wall collision
		var _num = instance_place_list(x, y, obj_en_flying, _list, false);
		if _num > 0
		    {
		    for (var i = 0; i < _num; ++i;)
		        {
					var _inst = _list[| i];
					var _dist = point_distance(x,y,_inst.x,_inst.y);
					var _angle = point_direction(x,y,_inst.x,_inst.y);
					var _step = max(0, (vac_force/2 * (vac_reach - _dist) / vac_reach));
					//var _step = (vac_force * (vac_reach - _dist) / vac_reach);
					if (_dist < vac_force) _step = 0;
					_inst.x -= lengthdir_x(_step,_angle);
					_inst.y -= lengthdir_y(_step,_angle);
		        }
		    }
		ds_list_destroy(_list);
	}
}


if obj_player.input_rc
{
	//var _playsuck = random(1);
	//if (_playsuck > 0.4) 
	//{
	//	audio_sound_pitch(sfx_ssuccc,random_range(0.4,0.6));
	//	audio_play_sound(sfx_ssuccc,6,false);
	//}
	with obj_vac_hitbox
	{
		sprite_index = spr_blow_effect;
		//blow pickups
		var _list = ds_list_create();
		var _num = instance_place_list(x, y, obj_pickup, _list, false);
		if _num > 0
		    {
		    for (var i = 0; i < _num; ++i;)
		        {
					var _inst = _list[| i];
					var _dist = point_distance(x,y,_inst.x,_inst.y);
					var _angle = point_direction(x,y,_inst.x,_inst.y);
					var _step = max(0, (vac_force * (vac_reach - _dist) / vac_reach));
					//var _step = (vac_force * (vac_reach - _dist) / vac_reach);
					if (_dist < vac_force) _step = 0;
					//if !place_meeting(_inst.x+lengthdir_x(_step,_angle),_inst.y+lengthdir_y(_step,_angle),obj_wall)
					//{
						_inst.x += lengthdir_x(_step,_angle);
						_inst.y += lengthdir_y(_step,_angle);
					//}
		        }
		    }
		ds_list_destroy(_list);
		
		//blow enemies
		var _list = ds_list_create();
		//var _num = instance_place_list(x, y, obj_enemy, _list, false);
		//^ this is fucky with the ground enemy's wall collision
		var _num = instance_place_list(x, y, obj_en_flying, _list, false);
		if _num > 0
		    {
		    for (var i = 0; i < _num; ++i;)
		        {
					var _inst = _list[| i];
					var _dist = point_distance(x,y,_inst.x,_inst.y);
					var _angle = point_direction(x,y,_inst.x,_inst.y);
					var _step = max(0, (vac_force/2 * (vac_reach - _dist) / vac_reach));
					//var _step = (vac_force * (vac_reach - _dist) / vac_reach);
					if (_dist < vac_force) _step = 0;
					_inst.x += lengthdir_x(_step,_angle);
					_inst.y += lengthdir_y(_step,_angle);
		        }
		    }
		ds_list_destroy(_list);
	}
	
	//ice blowy
	if obj_player.floortype = floors.ice
	{
		obj_player.dx -= lengthdir_x(blow_recoil,aim_dir);
		obj_player.dy -= lengthdir_y(blow_recoil,aim_dir);
	}
}

if (!obj_player.input_lc && !obj_player.input_rc)
{
	obj_vac_hitbox.sprite_index = noone;
}