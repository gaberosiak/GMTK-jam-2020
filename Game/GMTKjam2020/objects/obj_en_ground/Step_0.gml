/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case States.Patrol:
		//If the player enters my view area and I can see him, then go into chase mode
		if(collision_circle(x, y, viewRadius, obj_player, true, false))
		{
			//If I can see the player for n-amount of frames then go into chase mode
			if(!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, true, false))
			{
				viewTimer++;
				if(viewTimer > 10)
				{
					state = States.Chase;	
					viewTimer = 0;
				}
			}
			else
			{
				viewTimer = 0;	
			}
		}
		break;
	case States.Chase:	
		distance = point_distance(obj_player.x, obj_player.y, x, y);;
		dx = ((obj_player.x - x) / distance) * moveSpeed;
		dy = ((obj_player.y - y) / distance) * moveSpeed;
		if(place_meeting(x + dx, y, obj_wall))
		{
			while(place_meeting(x + dx, y, obj_wall))
			{
				dx -= sign(dx);	
			}
		}
		if(place_meeting(x, y + dy, obj_wall))
		{
			while(place_meeting(x, y + dy, obj_wall))
			{
				dy -= sign(dy);	
			}
		}		
		x += dx;
		y += dy;
		
		if(distance > 32)
		{
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
}