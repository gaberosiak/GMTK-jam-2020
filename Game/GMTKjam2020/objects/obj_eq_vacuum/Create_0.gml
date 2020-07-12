/// @description 
event_inherited();

vac_force = 8;
vac_reach = 400;
blow_recoil = 0.1;

if !instance_exists(obj_vac_hitbox)
{
	var _hitbox = instance_create_layer(x,y,"Instances_bottom",obj_vac_hitbox);
	_hitbox.vac_force = vac_force;
	_hitbox.vac_reach = vac_reach;
}


