///@desc draw_web

var _list = obj_brain.hivemind;
var _hive_size = ds_list_size(_list);

draw_set_color(c_lime);

for (var i = 0; i<_hive_size; i++)
{
	var _instancei = ds_list_find_value(_list,i)
	if _instancei != noone
	{
		var _xi = _instancei.x;
		var _yi = _instancei.y;
		//draw_line(obj_brain.x,obj_brain.y,_xi,_yi);
		for (var j = 0; j<_hive_size; j++)
		{
			var _instancej = ds_list_find_value(_list,j);
			if _instancei != _instancej && _instancej != noone
			{
				var _xj = _instancej.x;
				var _yj = _instancej.y;
				draw_line(_xi+_instancei.xcom, _yi+_instancei.ycom, _xj+_instancej.xcom, _yj+_instancej.ycom);
			}
		}	
	}
}