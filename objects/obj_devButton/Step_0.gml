if (mouse_check_button(mb_left) && place_meeting(x,y,obj_thatstupidmosuethingwhatitcalleduhhhhhhhhhh)){
	if (oneTimeClick == true){
		oneTimeClick = false
		image_index = 1
	
		if (whichButton == 390) {
			room_goto_previous()
		}
	
		else if (whichButton == 1){ //chnaging if the little guys can move or not
			if (global.canshittersmove == true) {
				global.canshittersmove = false
			}
			else {
				global.canshittersmove = true
			}
		}
	
	}
	
	
}
else {
	image_index = 2
	oneTimeClick = true
}