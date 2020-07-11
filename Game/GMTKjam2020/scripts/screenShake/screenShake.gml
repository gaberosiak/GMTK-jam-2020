///@desc screenShake(magnitude,frames)
///@arg magnitude
///@arg frames

var _mag = argument0;
var _frames = argument1;

with (mgr_camera)
{
	if _mag > shake_remaining
	{
		shake_mag = _mag;
		shake_remaining = shake_mag;
		shake_length = _frames;
	}
}