application_surface_draw_enable(false);

cur_window_width = windowed_mode_width;
cur_window_height = windowed_mode_height;
aspect_ratio = cur_window_width / cur_window_height;

if (aspect_ratio <= 1)
{
	int_scale = floor(cur_window_height/app_max_height);
	int_scaled_app_height = app_max_height * int_scale;
	int_scaled_app_width = int_scaled_app_height * aspect_ratio;
	cur_app_height = app_max_height;
	cur_app_width = app_max_height * aspect_ratio;
}

else
{
	int_scale = floor(cur_window_width/app_max_width);
	int_scaled_app_width = app_max_width * int_scale;
	int_scaled_app_height = int_scaled_app_width / aspect_ratio;
	cur_app_width = app_max_width;
	cur_app_height = app_max_width / aspect_ratio;
}

upscale_surf = -1;

display_set_gui_maximise();
window_set_size(cur_window_width,cur_window_height);
alarm[1] = 2;