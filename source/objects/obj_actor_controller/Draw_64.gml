/// @description Insert description here
// You can write your code in this editor

//draw_text_colour(10,110,"player info:"+json_encode(global.PlayerInfo),c_white,c_white,c_white,c_white,1);

//count = ds_map_size(global.PlayerInfo);

//key = ds_map_find_first(global.PlayerInfo);
//draw_text_colour(10,0,"count:"+string(count),c_white,c_white,c_white,c_white,1);
//for (i = 0; i < count; i += 1)
//{
//index = 0;
//thisClientBuffer = json_decode(ds_map_find_value(global.PlayerInfo,key))
//thisText = thisClientBuffer[? "playerInfo"]
//buff = buffer_base64_decode(thisText);
//thisSprite = ds_list_create();
//buffer_seek(buff, buffer_seek_start, 0);
//ds_list_add(thisSprite, buffer_read(buff,buffer_s16) );     //x
//ds_list_add(thisSprite, buffer_read(buff,buffer_s16) );     //y
//ds_list_add(thisSprite, buffer_read(buff,buffer_u16) );     //image_blend      
//ds_list_add(thisSprite, buffer_read(buff,buffer_u16) );     //image_blend   
//ds_list_add(thisSprite, buffer_read(buff,buffer_u16) );     //image_blend   
//xx = ds_list_find_value(thisSprite,index++);
//yy = ds_list_find_value(thisSprite,index++);
//col_red = ds_list_find_value(thisSprite,index++);
//col_green = ds_list_find_value(thisSprite,index++);
//col_blue = ds_list_find_value(thisSprite,index++);
//col = make_color_rgb(col_red,col_green,col_blue);
//draw_text_colour(10,i*100+20,"key:"+string(key),c_white,c_white,c_white,c_white,1);
//draw_text_colour(10,i*100+40,"x:"+string(xx),c_white,c_white,c_white,c_white,1);
//draw_text_colour(10,i*100+60,"y:"+string(yy),c_white,c_white,c_white,c_white,1);
//draw_text_colour(10,i*100+80,"col:"+string(col),c_white,c_white,c_white,c_white,1);
//key = ds_map_find_next(global.PlayerInfo, key);
//ds_list_destroy(thisClientBuffer)
//ds_list_destroy(thisSprite)
//}

//count2 = ds_map_size(global.PlayerList);
//key2 = ds_map_find_first(global.PlayerList);
//for (i = 0; i < count2; i += 1){
//	draw_text_color(50,50+20*i,key2,c_blue,c_blue,c_blue,c_blue,1)
//	key2 = ds_map_find_next(global.PlayerList, key2);
//}

//count2 = ds_map_size(global.PlayerInfo);
//key2 = ds_map_find_first(global.PlayerInfo);
//for (i = 0; i < count2; i += 1){
//	draw_text_color(50,150+20*i,key2,c_red,c_red,c_red,c_red,1)
//	key2 = ds_map_find_next(global.PlayerInfo, key2);
//}


//draw_text_color(100,120,string(is_undefined(ds_map_find_value(global.PlayerList,key))),c_white,c_white,c_white,c_white,1);