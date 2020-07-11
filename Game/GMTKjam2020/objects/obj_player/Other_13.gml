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
	// tell the player they fucked up
}
