// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gmcallback_sio_on_asyncPlayerInfo(argument0){
//var data = json_decode(argument0);
global.PlayerInfo =  json_decode(argument0);
show_debug_message("received async playerInfo: " + string(argument0));
show_debug_message("verify playerInfo: " + json_encode(global.PlayerInfo));
}