





if (place_meeting(x,y,obj_thatstupidmosuethingwhatitcalleduhhhhhhhhhh) && global.mouseclicking = true) {
	
	codeisdrag = true

}
else {
	codeisdrag = false	
	if (justfired = true) { 
		//tossed()
		justfired = false
	}
}


function tossed() {
		var throw_speed = 5;
		var throw_speedother = 5;
        
		var _dir = point_direction(other.x, other.y, mouse_x, mouse_y);
		physics_apply_impulse(x, y, lengthdir_x(throw_speed, _dir), lengthdir_y(throw_speedother, _dir))
}

function isThisAssholeMoving() { // check if the guy is moving by compairing current and last x,y vaules
	lastx = phy_position_xprevious //the x vaule of the last x and y (code in step)
	lasty = phy_position_yprevious
	currentx = phy_position_x
	currenty = phy_position_y
	//if ((round(currentx)== lastx) && (round(currenty)== lasty) ){
	//	thisfellamoving = false
//	}
	//else {
	//	thisfellamoving = true
	//}
//show_debug_message(thisfellamoving)


}

if codeisdrag = true {
	justfired = true
	self.phy_position_x = mouse_x
	self.phy_position_y = mouse_y
	
	
	phy_speed_y = 0
	phy_speed_y = 0
	
}
	
	
	
	
	
	
// fuction dump this is badly optimized I know
isThisAssholeMoving()