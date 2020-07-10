///@desc draw_chevron

var _x = 0;
var _y = 0;
var _rot = 90 * facing;
switch facing
{
	case 0:
	{
		_x = x + xcom + 20;
		_y = y + ycom;
		break;
	}
	case 1:
	{
		_x = x + xcom;
		_y = y + ycom - 20;
		break;
	}
	case 2:
	{
		_x = x + xcom - 20;
		_y = y + ycom;
		break;
	}
	case 3:
	{
		_x = x + xcom;
		_y = y + ycom + 20;
		break;
	}
}

draw_sprite_ext(spr_chevron,0,_x,_y,1,1,_rot,c_white,1);