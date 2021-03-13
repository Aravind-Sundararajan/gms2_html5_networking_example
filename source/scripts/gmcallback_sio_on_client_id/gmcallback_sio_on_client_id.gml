// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gmcallback_sio_on_client_id(argument0){
var data = json_decode(argument0);

global.clientId = data[? "client_id"];
show_debug_message("client_id: " + string(global.clientId));
}