///@desc create_hitbox
///@arg x
///@arg y
///@arg damage
///@arg knockback
///@arg lifetime
///@arg scale
///@arg xspeed
///@arg yspeed
///@arg immune
///@arg fragile


var _x = argument0;
var _y = argument1;
var _damage = argument2;
var _knockback = argument3;
var _lifetime = argument4;
var _scale = argument5;
var _xspeed = argument6;
var _yspeed = argument7;
var _immune = argument8;
var _fragile = argument9;


var _hitbox = instance_create_layer(_x,_y,"Instances", obj_hitbox);
_hitbox.damage = _damage;
_hitbox.knockback = _knockback;
_hitbox.alarm[0] = _lifetime;
_hitbox.scale = _scale;
_hitbox.xspeed = _xspeed;
_hitbox.yspeed = _yspeed;
_hitbox.immune = _immune;
_hitbox.fragile = _fragile;

return _hitbox