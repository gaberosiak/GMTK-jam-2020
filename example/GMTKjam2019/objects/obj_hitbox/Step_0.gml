/// @description Insert description here
// You can write your code in this editor

x += xspeed;
y += yspeed;
image_xscale = scale;
image_yscale = scale;
if (fragile && place_meeting(x,y,obj_wall))
{
	instance_destroy();
}