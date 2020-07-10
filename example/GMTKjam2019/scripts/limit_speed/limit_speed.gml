///@desc limit_speed

if (xvel > movespeed) xvel = movespeed;
else if (xvel < -movespeed) xvel = -movespeed;
if (yvel > movespeed) yvel = movespeed;
else if (yvel < -movespeed) yvel = -movespeed;