///@desc set up camera

cam = view_camera[0];
follow = obj_player;
view_w_half = camera_get_view_width(cam)*0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

cam_lag = 5;

x = view_w_half;
y = view_h_half;
x_to = x;
y_to = y;

shake_length = 0;
shake_mag = 0;
shake_remaining = 0;
