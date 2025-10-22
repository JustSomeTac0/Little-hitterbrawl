global.lastxofclicker = xprevious
global.lastyofclicker = yprevious
x = mouse_x
y = mouse_y



if (mouse_check_button(mb_left)) {
	image_index =  1 //closed hand
	global.mouseclicking = true
}

else {
	image_index = 2
	global.mouseclicking = false
}




//if (mouse_check_button(mb_right)) {
	
	//current_cursors[currentItemForCursor++]
//}