/// @description Insert description here
// You can write your code in this editor

global.player_buffer = buffer_create(40, buffer_fixed, 2);
buffer_seek(global.player_buffer, buffer_seek_start, 0);

buffer_write(global.player_buffer, buffer_s16, x );
buffer_write(global.player_buffer, buffer_s16, y );
buffer_write(global.player_buffer, buffer_s16, direction );
buffer_write(global.player_buffer, buffer_s16, sprite_index );
//buffer_write(global.player_buffer, buffer_s16, image_index );
buffer_write(global.player_buffer, buffer_s32, image_blend );
buffer_write(global.player_buffer, buffer_string, PlayerName );
buffEncode = buffer_base64_encode(global.player_buffer, 0, buffer_get_size(global.player_buffer));
emit_playerInfo(buffEncode)
buffer_delete(global.player_buffer);
if keyboard_check(vk_space){
image_blend = make_color_rgb(irandom(255),irandom(255),irandom(255));
}
if keyboard_check(vk_left){direction=direction-1;}
if keyboard_check(vk_right){direction=direction+1;}
image_angle = direction;
if keyboard_check(vk_up){speed=speed+.1;}
if keyboard_check(vk_down){speed=speed-.1;}
if speed<0 {speed=0}
if speed>1 {speed=1}

scr_keyControl();

