draw_set_font(global.font0);
draw_set_color(c_white);
draw_text(10,10,"Players in Game");
draw_line(10,30, room_width-10,30);

//var yindex = 40;
//var count =ds_map_size(global.PlayerNames);
//var key = ds_map_find_first(global.PlayerNames);
//for(var i=0;i<count;i++){
//	thisClient = json_decode(ds_map_find_value(global.PlayerNames,key));
//	thisText = thisClient[? "name"];
//    draw_text(10,yindex, thisText);//ds_list_find_value(global.PlayerNames, i)
//    yindex+=30;
//	key = ds_map_find_next(global.PlayerNames, key);
//	ds_list_destroy(thisClient)
//}
//key = ds_map_find_first(global.PlayersList)
//var yindex = 40;
//for(var i=0;i<count;i++){
//	draw_text(10,yindex, key)
//	yindex+=30
//key = ds_map_find_next(global.PlayersList, key);
//}
