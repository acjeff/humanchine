if (keyboard_check_pressed(ord("T"))) { time_pause = !time_pause}
if (time_pause) exit;

//Increment time
global.seconds += time_increment;
global.minutes = global.seconds/60;
global.hours = global.minutes/60;


if (draw_daylight) {
	#region Phases and Variables
	var darks, colours, pstart, pend;
	
	if (global.hours > phase.sunrise and global.hours <= phase.daytime) { //sunrire
		darks = [max_darkness, 0.2];
		colours = [merge_color(c_black, c_navy, 0.3), c_orange];
		pstart = phase.sunrise;
		pend = phase.daytime;
		global.timeOfDay = "sunrise";
		} else if (global.hours > phase.daytime and global.hours <= phase.sunset) { //day
		darks = [0.2, 0, 0, 0, 0.2];
		colours = [c_orange, c_orange, c_white, c_orange, c_orange];
		pstart = phase.daytime;
		pend = phase.sunset;
		global.timeOfDay = "daytime";
	} else if (global.hours > phase.sunset and global.hours <= phase.nighttime) { //sunset
		darks = [0.2, max_darkness];
		colours = [c_orange, c_navy, merge_color(c_black, c_navy, 0.3)];
		pstart = phase.sunset;
		pend = phase.nighttime;
		global.timeOfDay = "sunset";
	} else { //nighttime
		darks = [max_darkness];
		colours = [merge_color(c_black, c_navy, 0.3)];
		pstart = phase.nighttime;
		pend = phase.sunrise;
		global.timeOfDay = "nighttime";
	}
	#endregion
	
	#region Alter Darkness and Colours Depending on Time
	//Colours
	if (pstart = phase.nighttime) { light_colour = colours[0]}
	else {
		var cc = ((global.hours - pstart) / (pend - pstart))*(array_length_1d(colours) - 1 );
		var c1 = colours[floor(cc)];
		var c2 = colours[ceil(cc)];
	
		light_colour = merge_color(c1, c2, cc - floor(cc));
	}
	
	//Darkness
	if (pstart = phase.nighttime) { darkness = darks[0]}
	else {
		var dd = ((global.hours - pstart) / (pend - pstart))*(array_length_1d(darks) - 1 );
		var d1 = darks[floor(dd)];
		var d2 = darks[ceil(dd)];
	
		darkness = merge_number(d1, d2, dd - floor(dd));
	}
	#endregion
	
}


#region Cycle Check
show_debug_message(string(global.hours));
if(global.hours = 24) {
	global.seconds = 0;
	global.day += 1;
	with(crops) { event_perform(ev_other, ev_user1)}
	if (global.day > 30) {
		global.day = 1;
		global.season += 1;
		if (global.season > 4) {
			global.year += 1;
		}
	}
}
#endregion