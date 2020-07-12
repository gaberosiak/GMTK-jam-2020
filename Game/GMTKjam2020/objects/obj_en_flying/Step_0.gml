/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case States.Patrol:
		//If the player enters my view area and I can see him, then go into chase mode
		if(collision_circle(x, y, 256, obj_player, true, false))
		{
			//If I can see the player for n-amount of frames then go into chase mode
			if(!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, true, false))
			{
				viewTimer++;
				if(viewTimer > 10)
				{
					state = States.Chase;	
					viewTimer = 0;
					moveTimer = 30;
					isMoving = true;
				}
			}
			else
			{
				viewTimer = 0;	
			}
		}
		break;
	case States.Chase:
		if(isMoving)
		{					
			distance = point_distance(obj_player.x, obj_player.y, x, y);;
			if(distance > 64)
			{
				mp_potential_step_object(obj_player.x, obj_player.y, moveSpeed, obj_wall);	
				attackTimer = 0;
			}
			else
			{
				attackTimer++;
				if(attackTimer >= 5)
				{
					viewTimer = 0;	
					attackTimer = 0;
					state = States.Attack;
				}
			}
		}
		
		if(!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, true, false))
		{
			viewTimer = 0;
		}
		else
		{
			viewTimer++;
			if(viewTimer >= 10)
			{
				state = States.Patrol;
				viewTimer = 0;			
			}
		}	
		
		moveTimer--;
		if(moveTimer <= 0)
		{
			if(!isMoving)
			{
				moveTimer = 30;
			}
			else
			{
				moveTimer = 45;	
			}
			isMoving = !isMoving;
		}	
		break;
	case States.Attack:		
		attackTimer++;
		if(attackTimer > 5 && attackTimer <= 10)
		{			
			xDir = (obj_player.x - x) * 0.5;
			yDir = (obj_player.y - y) * 0.5;
			if(collision_circle(x + xDir, y + yDir, 32, obj_player, true, false))
			{
				
			}
		}
		if(attackTimer >= 30)
		{
			state = States.Patrol;
		}
		break;
	case States.Trapped:
		break;
	case States.Damaged:
		break;
}
