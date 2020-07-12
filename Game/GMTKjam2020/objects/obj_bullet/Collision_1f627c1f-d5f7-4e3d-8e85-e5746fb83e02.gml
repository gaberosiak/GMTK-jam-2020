/// @description destroy self

var _deswall = instance_place(x,y,obj_wa_destructible);
if _deswall != noone
{
	instance_destroy(_deswall);
}

instance_destroy();