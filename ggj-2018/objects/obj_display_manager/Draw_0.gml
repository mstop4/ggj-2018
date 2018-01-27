ds_list_sort(global.render_queue,true);
var _max_count = ds_list_size(global.render_queue);

for (var i=0; i<_max_count; i++)
{
	var _cur_obj = global.render_queue[| i]&$FFFFFFFF;
	
	with (_cur_obj)
		draw_self();
}