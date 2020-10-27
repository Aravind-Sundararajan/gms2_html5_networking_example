/// emit_login()
/// @param name:string
function emit_login(argument0) {
	var data = ds_map_create();
	  data[? "name"] = argument0;
	  sio_emit("login", json_encode(data));
	  show_debug_message("logging in...");
	ds_map_destroy(data);


}
