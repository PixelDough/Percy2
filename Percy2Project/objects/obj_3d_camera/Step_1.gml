
//direction -= (display_mouse_get_x()-display_get_width()/2)/10;
//pitch = clamp(pitch-(display_mouse_get_y()-display_get_height()/2)/10, -80, 80);

//display_mouse_set(display_get_width()/2, display_get_height()/2);

//if (keyboard_check(vk_escape)) {
//	game_end();
//}

//switch (keyboard_key) {
//	case vk_left:
//	case ord("A"):
//		x-=dsin(direction)*spd;
//		y-=dcos(direction)*spd;
//		break;
//	case vk_down:
//	case ord("S"):
//		x-=dcos(direction)*spd;
//		y+=dsin(direction)*spd;
//		break;
//	case vk_right:
//	case ord("D"):
//		x+=dsin(direction)*spd;
//		y+=dcos(direction)*spd;
//		break;
//	case vk_up:
//	case ord("W"):
//		x+=dcos(direction)*spd;
//		y-=dsin(direction)*spd;
//		break;
//}