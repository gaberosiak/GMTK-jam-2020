///@desc get_hit

var _hitboxlist = ds_list_create();
var _num = instance_place_list(x,y,obj_hitbox,_hitboxlist,true);
if _num > 0
{
	for (var i = 0; i < _num; i++)
	{
		var _hitboxinstance = ds_list_find_value(_hitboxlist,i);
		if _hitboxinstance.immune != self
		{
			if (alarm[0]<0)
			{
				hp -= _hitboxinstance.damage;
				alarm[0] = invulnerability;
				state = states.oof;
				ooftimer = 0;
				trytoplay(sfx_oof);
				
				//set knockback
				var _kbdir =  point_direction(_hitboxinstance.x,_hitboxinstance.y, x+xcom,y+ycom);
				xvel = lengthdir_x(_hitboxinstance.knockback,_kbdir);
				yvel = lengthdir_y(_hitboxinstance.knockback,_kbdir);
							
				instance_destroy(_hitboxinstance);
			}
		}
	}
}
ds_list_destroy(_hitboxlist)

if hp<=0
{
	if hive == true
	{
		hivemind_remove(self)
	}
	instance_destroy()
}

if (hp>hp_max) hp = hp_max;