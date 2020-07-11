/// @description update camera

//update destination
if instance_exists(follow)
{
	x_to = follow.x;
	y_to = follow.y;
}

//update object position
x += (x_to - x) / cam_lag;
y += (y_to - y) / cam_lag;

//clamp
x = clamp(x,view_w_half, room_width-view_w_half);
y = clamp(y,view_h_half, room_height-view_h_half);

//screenshake
x += random_range(-shake_remaining,shake_remaining);
y += random_range(-shake_remaining,shake_remaining);
shake_remaining = max(0, shake_remaining - ((1/shake_length) * shake_mag));

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);