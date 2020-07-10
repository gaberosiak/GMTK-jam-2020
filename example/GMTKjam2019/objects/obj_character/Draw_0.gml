

//if canbecaptured
//{
//	draw_text(x+18,y,"capturable")
//}

//if alarm[0] >=0
//{
//	draw_text (x+18, y-12, "invulnerable");
//}


//draw_text(x+18,y-36,"HP " + string(hp));

//switch state
//{
//	case 0: str = "player"; break;
//	case 1: str = "AI"; break;
//	case 2: str = "act"; break;
//	case 3: str = "oof"; break;
//	case 4: str = "stun"; break;
//}


//draw_text(x+18,y-24,str)

if (hive) draw_chevron();
if (canbecaptured) draw_sprite(spr_vulnerable,0,x,y);
draw_self();
draw_hp();
if (state == states.stun)
{
	var _frame = floor(stuntimer/15) mod 2;
	draw_sprite(spr_dazed,_frame,x,y-16);
}