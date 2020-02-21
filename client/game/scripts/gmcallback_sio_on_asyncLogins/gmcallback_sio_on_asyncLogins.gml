//var data = json_decode(argument0);
//var resultMap = data[? "players"];
global.PlayerNames =  json_decode(argument0);//ds_map_find_value(resultMap,"players");
show_debug_message("received async PlayerNames: " + string(argument0));