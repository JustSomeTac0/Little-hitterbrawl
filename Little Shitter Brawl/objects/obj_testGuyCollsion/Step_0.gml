x = obj_testForDaplayer.x   //go to the players x and y
y = obj_testForDaplayer.y
image_angle = obj_testForDaplayer.image_angle



if place_meeting(x,y,obj_wallandfloorto) && onetimevarforstoppingshit == false {
	onetimevarforstoppingshit = true
	show_debug_message("collided :0")
	alarm[0] = 175 * time_source_units_frames

}