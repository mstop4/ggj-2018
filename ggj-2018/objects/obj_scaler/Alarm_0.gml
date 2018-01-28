if (window_get_fullscreen())
{
	cur_window_width = display_get_width();
	cur_window_height = display_get_height();
}

else
{
	cur_window_width = windowed_mode_width;
	cur_window_height = windowed_mode_height;
}

aspect_ratio = cur_window_width / cur_window_height;

if (aspect_ratio <= 1)
{
	int_scale = floor(cur_window_height/app_max_height);
	int_scaled_app_height = app_max_height * int_scale;
	int_scaled_app_width = int_scaled_app_height * aspect_ratio;
	cur_app_height = app_max_height;
	cur_app_width = app_max_height * aspect_ratio;
	view_height = windowed_mode_height;
	view_width = view_height * aspect_ratio;
}

else
{
	int_scale = floor(cur_window_width/app_max_width);
	int_scaled_app_width = app_max_width * int_scale;
	int_scaled_app_height = int_scaled_app_width / aspect_ratio;
	cur_app_width = app_max_width;
	cur_app_height = app_max_width / aspect_ratio;
	view_width = windowed_mode_width;
	view_height = view_width / aspect_ratio;
}

camera_set_view_size(view_camera[0],view_width,view_height);
camera_set_view_pos(view_camera[0],(room_width-cur_app_width)/2,(room_height-cur_app_height)/2);

surface_resize(application_surface,view_width,view_height);
	
display_set_gui_maximise();

switch (os_type)
{
	case os_windows:
	case os_linux:
		window_set_size(cur_window_width,cur_window_height);
		alarm[1] = 2;
		break;
		
	case os_macosx:
		alarm[1] = 5;
		break;
}
