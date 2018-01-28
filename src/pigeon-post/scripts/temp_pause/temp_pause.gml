/// @function temp_pause(duration)
/// @description i dunno
/// @param duration

var _duration = argument[0];

with (all)
	event_user(4);
	
obj_game_controller.alarm[1] = _duration;