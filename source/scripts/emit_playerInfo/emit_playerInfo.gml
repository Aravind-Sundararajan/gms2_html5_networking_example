// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function emit_playerInfo(argument0){
	var data = ds_map_create();
	data[? "playerInfo"] = argument0;
	sio_emit("playerInfo", json_encode(data));
	ds_map_destroy(data);
	show_debug_message("sending player info to the server");
}