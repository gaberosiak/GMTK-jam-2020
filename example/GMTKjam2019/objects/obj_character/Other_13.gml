/// @description oof

image_speed = 0;
image_index = 0;

xvel = xvel - movedecel * sign(xvel);
if (abs(xvel) < movedecel) xvel = 0;
yvel = yvel - movedecel * sign(yvel);
if (abs(yvel) < movedecel) yvel = 0;
move_collide();

ooftimer++;
if ooftimer >= ooflength
{
	switch hive
	{
		case 1: state = states.control; break;
		case 0: state = states.AI; break;
	}
}

