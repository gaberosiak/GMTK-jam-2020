/// @description 

draw_self();
if (W_juice + A_juice +	S_juice + D_juice + lc_juice + rc_juice > 0)
{
	draw_sprite(spr_player_head,facing,x,y+neck_y);
}
else if (time_dead > 90)
{
	draw_set_color(c_white);
	draw_text(x-60,y-96," Press R to\nrestart level")
}