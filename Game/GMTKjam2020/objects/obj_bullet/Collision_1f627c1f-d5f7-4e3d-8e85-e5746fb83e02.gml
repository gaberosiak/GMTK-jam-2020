/// @description destroy self

var _deswall = instance_place(x,y,obj_wa_destructible);
if _deswall != noone
{
	audio_play_sound(sfx_destruct2,6,false);
	instance_destroy(_deswall);
}
else audio_play_sound(sfx_impact2,3,false);

instance_destroy();