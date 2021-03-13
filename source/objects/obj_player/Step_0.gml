/// @description Insert description here
// You can write your code in this editor
if keyboard_check_direct(ord("A")){
x = x- 1;
}
if keyboard_check_direct(ord("D")){
x = x+ 1;
}
if keyboard_check_direct(ord("W")){
y = y- 1;
}
if keyboard_check_direct(ord("S")){
y = y+ 1;
}


if keyboard_check_direct(vk_space){
	image_blend = make_color_rgb(irandom(255),irandom(255),irandom(255))
}

global.player_buffer = buffer_create(20, buffer_fixed, 2);
buffer_seek(global.player_buffer, buffer_seek_start, 0);

buffer_write(global.player_buffer, buffer_s16, x );
buffer_write(global.player_buffer, buffer_s16, y );
buffer_write(global.player_buffer, buffer_u16, color_get_red(image_blend) );
buffer_write(global.player_buffer, buffer_u16, color_get_green(image_blend) );
buffer_write(global.player_buffer, buffer_u16, color_get_blue(image_blend) );

buffEncode = buffer_base64_encode(global.player_buffer, 0, buffer_get_size(global.player_buffer));
//show_debug_message("buffer: " + string(buffEncode));
if (can_send){
	alarm[0] = 22;
	can_send = false;
}


buffer_delete(global.player_buffer);