x = obj_testForDaplayer.x   //go to the players x and y
y = obj_testForDaplayer.y
image_angle = obj_testForDaplayer.image_angle




if place_meeting(x,y,obj_wallandfloorto) && onetimevarforstoppingshit == false {
	
	with (obj_testForDaplayer) {
   // they turn
    obj_testForDaplayer.gettingUpStep = 1
	obj_testForDaplayer.triggedReset = true
	
	}
	onetimevarforstoppingshit = true
	alarm[0] = 75 * time_source_units_frames

}