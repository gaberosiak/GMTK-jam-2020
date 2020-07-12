/// @description 
event_inherited();

if obj_player.input_lc
{
	with obj_vac_hitbox
	{
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
	with obj_vac_hitbox
	{
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