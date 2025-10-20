lastx = phy_position_xprevious
lasty = phy_position_yprevious







if (place_meeting(x,y,obj_thatstupidmosuethingwhatitcalleduhhhhhhhhhh) && global.mouseclicking = true) {
	
	codeisdrag = true

}
else {
	codeisdrag = false	
	if (justfired = true) { 
		tossed()
		justfired = false
	}
}


function tossed() {
		var throw_speed = 5;
		var throw_speedother = 5;
        var throw_direction = point_direction(x, y, mouse_x, mouse_y); //fix issue where if ther is no y movement it goes up
		var dir_x = mouse_x - x;
        var dir_y = mouse_y - y + 10;
		phy_speed_x = lengthdir_x(throw_speed, throw_direction);
        phy_speed_y = lengthdir_y(throw_speedother, throw_direction);
}

if codeisdrag = true {
	justfired = true
	self.phy_position_x = mouse_x
	self.phy_position_y = mouse_y
	
	
	phy_speed_x = 0
	phy_speed_y = 0
	
}