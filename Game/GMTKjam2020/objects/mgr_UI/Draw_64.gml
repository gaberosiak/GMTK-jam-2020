/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_rectangle(0,0,100,130,false);

draw_set_color(c_white);
draw_text(5,5,"W - ");
draw_text(5,25,"A - ");
draw_text(5,45,"S - ");
draw_text(5,65,"D - ");
draw_text(5,85,"L - ");
draw_text(5,105,"R - ");


draw_set_color(c_red);
if(obj_player.W_juice > 0)
	draw_rectangle(40,12.5,(50 * (obj_player.W_juice / 640)) + 40,20,false);
if(obj_player.A_juice > 0)
	draw_rectangle(40,32.5,(50 * (obj_player.A_juice / 640)) + 40,40,false);
if(obj_player.S_juice > 0)
	draw_rectangle(40,52.5,(50 * (obj_player.S_juice / 640)) + 40,60,false);
if(obj_player.D_juice > 0)
	draw_rectangle(40,72.5,(50 * (obj_player.D_juice / 640)) + 40,80,false);
if(obj_player.lc_juice > 0)
	draw_rectangle(40,92.5,(50 * (obj_player.lc_juice / 640)) + 40,100,false);
if(obj_player.rc_juice > 0)
	draw_rectangle(40,112.5,(50 * (obj_player.rc_juice / 640)) + 40,120,false);