camera = camera_create();

camw = 480;
camh = 320;
var _viewmatrix = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var _projectionmatrix = matrix_build_projection_ortho(camw,camh,1,10000);

camera_set_view_mat(camera,_viewmatrix);
camera_set_proj_mat(camera,_projectionmatrix);

view_camera[0] = camera;

follow = obj_brain;
xto = x;
yto = y;

ease = 20;

