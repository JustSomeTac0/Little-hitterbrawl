if place_meeting(x,y,obj_wallandfloorto) { // checking is the guy still there
	obj_testForDaplayer.gettingUpStep = 2
	obj_testForDaplayer.triggedReset = true
	alarm[1] = 15 * time_source_units_frames
}
else {
	onetimevarforstoppingshit = false	//resets it all if false
}




