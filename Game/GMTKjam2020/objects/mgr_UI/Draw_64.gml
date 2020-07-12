/// @description Insert description here
// You can write your code in this editor

var _h = camera_get_view_height(mgr_camera.cam)

draw_set_color(c_black);
draw_rectangle(0,0,ui_panel_width,_h,false);

var _barspacing = 32;
var _barstart = 8;
var _barwidth = 16;

draw_set_color(c_white);
draw_text(_barstart + _barspacing * 0 + 4,_h - 32,"W");
draw_text(_barstart + _barspacing * 1 + 4,_h - 32,"A");
draw_text(_barstart + _barspacing * 2 + 4,_h - 32,"S");
draw_text(_barstart + _barspacing * 3 + 4,_h - 32,"D");
draw_text(_barstart + _barspacing * 4,_h - 32,"LC");
draw_text(_barstart + _barspacing * 5,_h - 32,"RC");

draw_set_color(c_red);
if(obj_player.W_juice > 0)
	draw_rectangle(_barstart + _barspacing * 0, _h-32, _barstart + _barspacing * 0 + _barwidth, _h-32 - 0.5 * obj_player.W_juice,false);
if(obj_player.A_juice > 0)
	draw_rectangle(_barstart + _barspacing * 1, _h-32, _barstart + _barspacing * 1 + _barwidth, _h-32 - 0.5 * obj_player.A_juice,false);
if(obj_player.S_juice > 0)
	draw_rectangle(_barstart + _barspacing * 2, _h-32, _barstart + _barspacing * 2 + _barwidth, _h-32 - 0.5 * obj_player.S_juice,false);
if(obj_player.D_juice > 0)
	draw_rectangle(_barstart + _barspacing * 3, _h-32, _barstart + _barspacing * 3 + _barwidth, _h-32 - 0.5 * obj_player.D_juice,false);
if(obj_player.lc_juice > 0)
	draw_rectangle(_barstart + _barspacing * 4, _h-32, _barstart + _barspacing * 4 + _barwidth, _h-32 - 1.0 * obj_player.lc_juice,false);
if(obj_player.rc_juice > 0)
	draw_rectangle(_barstart + _barspacing * 5, _h-32, _barstart + _barspacing * 5 + _barwidth, _h-32 - 1.0 * obj_player.rc_juice,false);
///////////                                                                        magic scaling numbers ^
	
draw_set_color(c_white);
draw_text(8,16,mgr_room.level_name);

if obj_player.time_dead > 90
{
	draw_set_color(c_white);
	draw_text(36,196,"Out of juice!\n\n Press R to\nrestart level")
}


//if(obj_player.W_juice > 0)
//	draw_rectangle(40,12.5,(50 * (obj_player.W_juice / 640)) + 40,20,false);
//if(obj_player.A_juice > 0)
//	draw_rectangle(40,32.5,(50 * (obj_player.A_juice / 640)) + 40,40,false);
//if(obj_player.S_juice > 0)
//	draw_rectangle(40,52.5,(50 * (obj_player.S_juice / 640)) + 40,60,false);
//if(obj_player.D_juice > 0)
//	draw_rectangle(40,72.5,(50 * (obj_player.D_juice / 640)) + 40,80,false);
//if(obj_player.lc_juice > 0)
//	draw_rectangle(40,92.5,(50 * (obj_player.lc_juice / 640)) + 40,100,false);
//if(obj_player.rc_juice > 0)
//	draw_rectangle(40,112.5,(50 * (obj_player.rc_juice / 640)) + 40,120,false);