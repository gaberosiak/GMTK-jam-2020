x += (xto - x) / ease;
y += (yto - y) / ease;

if (follow != noone)
{
	xto = follow.x;
	yto = follow.y;
	xto = clamp(xto, camw/2, room_width-camw/2) ;
	yto = clamp(yto, camh/2, room_height-camh/2);
}

var _viewmatrix = matrix_build_lookat(x, y, -10, x, y, 0 , 0, 1, 0);
camera_set_view_mat(camera,_viewmatrix);