/// @description Insert description here
// You can write your code in this editor
moveSpeed = 2.5;
isMoving = true;
moveTimer = 30;
enum States
{
	Patrol,
	Chase,
	Attack,
	Trapped,
	Damaged
}
state = States.Patrol;
viewTimer = 0;
attackTimer = 5;