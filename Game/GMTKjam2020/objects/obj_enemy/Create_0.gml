/// @description Insert description here
// You can write your code in this editor
moveSpeed = 2.5;
enum States
{
	Patrol,
	Chase,
	Attack,
	Trapped
}
state = States.Patrol;
viewTimer = 0;
attackTimer = 5;
viewRadius = 256;