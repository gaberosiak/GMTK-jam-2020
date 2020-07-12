///@desc collectPickups

var _collect = false;

var _pu = instance_place(x,y,obj_pu_W)
if _pu != noone
{
	W_juice += _pu.juice;
	instance_destroy(_pu);
	_collect = true;
}

var _pu = instance_place(x,y,obj_pu_A)
if _pu != noone
{
	A_juice += _pu.juice;
	instance_destroy(_pu);
	_collect = true;
}

var _pu = instance_place(x,y,obj_pu_S)
if _pu != noone
{
	S_juice += _pu.juice;
	instance_destroy(_pu);
	_collect = true;
}

var _pu = instance_place(x,y,obj_pu_D)
if _pu != noone
{
	D_juice += _pu.juice;
	instance_destroy(_pu);
	_collect = true;	
}

var _pu = instance_place(x,y,obj_pu_lc)
if _pu != noone
{
	lc_juice += _pu.juice;
	instance_destroy(_pu);
	_collect = true;	
}

var _pu = instance_place(x,y,obj_pu_rc)
if _pu != noone
{
	rc_juice += _pu.juice;
	instance_destroy(_pu);
	_collect = true;	
}

return _collect;