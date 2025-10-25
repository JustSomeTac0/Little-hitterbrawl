isonfloor = false // is the ceater grounded
yspeed = 0
xspeed = 0
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



function normalState_Tree() { //wanted to name it something funny but would have been to confusing
	if (normalState == true){
		show_debug_message("Normal State is active Start: Digging in you but twin")
		normalState = false
		randomize()
		var randomAssNumberThatsOnlyHere = irandom(1)  // random number for 0 to whatever is put here
		show_debug_message(randomAssNumberThatsOnlyHere)
		if (randomAssNumberThatsOnlyHere == 0) {
			//nothing()
			trashvariable += 1
			trashvariable -= 1
		}
		
		if (randomAssNumberThatsOnlyHere == 1) {
			littleshitsmovement() // move little being
		}
		alarm[1] = 60 * time_source_units_frames // set so it can run another check of this fuction 1 sec later
	}
}