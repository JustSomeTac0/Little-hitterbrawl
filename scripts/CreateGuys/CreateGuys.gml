function CreateGuys(){
	isonfloor = false // is the ceater grounded
	codeisdrag = false   //is the thing being dragged
	lastx = 0 //the x vaule of the last x and y (code in step)
	lasty = 0
	justfired = false  //was she justed let go of being grabbed
	currentx = 0
	currenty = 0
	thisfellamoving = true
	movementOps = 2
	normalState = true
	trashvariable = 69.420
	gettingUpStep = 0



	triggedReset = false






	function resetfella() {
		phy_speed_x = 0
		phy_speed_y = 0
		phy_rotation = 0
	
	}


	//function test() {
		//show_debug_message("this is a test duh")
	//}

	function littleshitsmovement() {
		// little guy moves based on how many movement opportiaties he has
		show_debug_message("little bro should be moving")
		for ( littleguysmovedhowmuch = 0; ((littleguysmovedhowmuch == movementOps) or (littleguysmovedhowmuch < (movementOps + 1))); littleguysmovedhowmuch += 1) {
			show_debug_message("this is looping")
			//how much they move
			randomize()
			leftOrRight = irandom(1)
			if (leftOrRight == 0) {
				self.phy_speed_x = 5
			}
			else {
				self.phy_speed_x = -5
			}
			alarm_set(0,time_source_units_seconds)

		}
	}

	function littleshitsjump() {
		// little guy moves based on how many movement opportiaties he has
		show_debug_message("little bro should be Jumping")
		for ( littleguysmovedhowmuch = 0; ((littleguysmovedhowmuch == movementOps) or (littleguysmovedhowmuch < (movementOps + 1))); littleguysmovedhowmuch += 1) {
		
			//how much they move
			randomize()
			leftOrRight = irandom(1)
			if (leftOrRight == 0) {
				self.phy_speed_x = 2
				self.phy_speed_y = -5
			}
			else {
				self.phy_speed_x = -2
				self.phy_speed_y = -5
			}
			alarm_set(0,time_source_units_seconds)

		}
	}



	function normalState_Tree() { //wanted to name it something funny but would have been to confusing
		if (normalState == true){
			show_debug_message("Normal State is active Start: Digging in you but twin")
			normalState = false
			randomize()
			var randomAssNumberThatsOnlyHere = irandom(2)  // random number for 0 to whatever is put here
			show_debug_message(randomAssNumberThatsOnlyHere)
			if (randomAssNumberThatsOnlyHere == 0) {
				//nothing()
				trashvariable += 1
				trashvariable -= 1
			}
		
			if (randomAssNumberThatsOnlyHere == 1) {
				littleshitsmovement() // move little being
			}
			if (randomAssNumberThatsOnlyHere == 2) {
				littleshitsjump() // the guy should be jumping 
			}
			alarm[1] = 60 * time_source_units_frames // set so it can run another check of this fuction 1 sec later
		}
	}




















	//this is for boosting the guy back up when he fall
	function backup() {
		if gettingUpStep == 1 {
			normalState = false
	
		}
		else if gettingUpStep == 2 {
			phy_speed_y = 5
		}
		else if gettingUpStep == 3 {
			normalState = true
			resetfella()
		}
	}
}