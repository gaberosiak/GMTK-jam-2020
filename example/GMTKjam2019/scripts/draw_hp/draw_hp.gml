///@desc draw_hp

var _y_draw = y - 24;
var _width = 8;
var _x_draw = x - (hp-1) * _width/2;

for (var i=0; i<hp; i++)
{
	draw_sprite(spr_heart,0,_x_draw,_y_draw);
	_x_draw += _width;
}