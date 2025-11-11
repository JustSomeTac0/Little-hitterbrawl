function littleGuyMoveScript(){

	if (place_meeting(x,y,obj_thatstupidmosuethingwhatitcalleduhhhhhhhhhh) && global.mouseclicking = true) {
	
		codeisdrag = true

	}
	else {
		codeisdrag = false	
		if (justfired = true) { 
			//tossed()
		
			justfired = false
			alarm[1] = 60 * time_source_units_frames
		}
	}


	function tossed() {
			var throw_speed = 5;
			var throw_speedother = 5;
        
			var _dir = point_direction(other.x, other.y, mouse_x, mouse_y);
			physics_apply_impulse(x, y, lengthdir_x(throw_speed, _dir), lengthdir_y(throw_speedother, _dir))
	}



	if codeisdrag = true {
		justfired = true
		self.phy_position_x = mouse_x
		self.phy_position_y = mouse_y
	
	
		phy_speed_y = 0
		phy_speed_x = 0
		normalState = false
	
	}
	
	
	
	
	
	
	// fuction dump this is badly optimized I know
	if (global.canshittersmove == true) {
		normalState_Tree()
	}
	if triggedReset = true { //guy get back up  //trigers part of the reset thing needs to be trigged two more times to finish it all
		backup()
		triggedReset = false
	}
	//test()

}