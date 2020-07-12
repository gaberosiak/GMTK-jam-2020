/// @description pit floor


if flying
{
	//collision check
	//bounce like ice
	collide(floors.ice);

	//move commit
	x += dx;
	y += dy;
}
else 
{
	W_juice = 0;
	A_juice = 0;
	S_juice = 0;
	D_juice = 0;
	lc_juice = 0;
	rc_juice = 0;
}
