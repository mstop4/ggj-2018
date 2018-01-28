gpu_set_colorwriteenable(1,1,1,0);
surface_set_target(upscale_surf);
	draw_clear(c_black);
	draw_surface_ext(application_surface,0,0,int_scale,int_scale,0,c_white,1);
surface_reset_target();
gpu_set_texfilter(true);

draw_surface(upscale_surf,0,0);
//draw_surface_stretched(upscale_surf,0,0,cur_window_width,cur_window_height);
gpu_set_colorwriteenable(1,1,1,1);
gpu_set_texfilter(false);
