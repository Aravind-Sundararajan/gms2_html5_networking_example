// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function emit_login(argument0){
/// emit_login()
/// @param name:string
var data = ds_map_create();
  data[? "name"] = argument0;
  sio_emit("login", json_encode(data));
ds_map_destroy(data);
}