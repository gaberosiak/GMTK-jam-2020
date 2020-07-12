/// @description 

with other
{
	if alive
	{
		audio_play_sound(death,7,0);
		alive = false;
	}
	W_juice = 0;
	A_juice = 0;
	S_juice = 0;
	D_juice = 0;
	lc_juice = 0;
	rc_juice = 0;
}