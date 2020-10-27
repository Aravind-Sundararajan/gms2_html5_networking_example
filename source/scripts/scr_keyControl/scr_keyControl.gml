function scr_keyControl() {
	if keyboard_check_pressed(vk_space){
	keys[JUMP_KEY] = true;
	}
	if keyboard_check_released(vk_space){
	keys[JUMP_KEY] = false;
	}
	if keyboard_check_pressed(vk_left){
	keys[LEFT_KEY] = true;
	}
	if keyboard_check_released(vk_left){
	keys[LEFT_KEY] = false;
	}
	if keyboard_check_pressed(vk_right){
	keys[RIGHT_KEY] = true;
	}
	if keyboard_check_released(vk_right){
	keys[RIGHT_KEY] = false;
	}
	if keyboard_check_pressed(vk_up){
	keys[UP_KEY] = true;
	}
	if keyboard_check_released(vk_up){
	keys[UP_KEY] = false;
	}
	if keyboard_check_pressed(vk_down){
	keys[DOWN_KEY] = true;
	}
	if keyboard_check_released(vk_down){
	keys[DOWN_KEY] = false;
	}


}
