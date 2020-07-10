
var _pushdirection = point_direction(other.x,other.y,x,y);
var _pushstrength = 0.25;
var _xpush = lengthdir_x(_pushstrength,_pushdirection);
var _ypush = lengthdir_y(_pushstrength,_pushdirection);
xvel += _xpush;
yvel += _ypush;
limit_speed();

