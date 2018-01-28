if (aspect_ratio <= 1)
{
	view_height = windowed_mode_height;
	view_width = view_height * aspect_ratio;
}

else
{	
	view_width = windowed_mode_width;
	view_height = view_width / aspect_ratio;
}

camera_set_view_size(view_camera[0],view_width,view_height);
camera_set_view_pos(view_camera[0],(room_width-cur_app_width)/2,(room_height-cur_app_height)/2);

surface_resize(application_surface,view_width,view_height);