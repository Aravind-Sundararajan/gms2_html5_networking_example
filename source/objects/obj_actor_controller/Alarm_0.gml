/// @description Insert description here
// You can write your code in this editor
emit_asyncPlayerInfo();
can_send = true;

count = ds_map_size(global.PlayerInfo);

key = ds_map_find_first(global.PlayerInfo);
for (i = 0; i < count; i += 1)
{
	index = 0;
	thisClientBuffer = json_decode(ds_map_find_value(global.PlayerInfo,key))
	thisText = thisClientBuffer[? "playerInfo"]
	buff = buffer_base64_decode(thisText);
	thisSprite = ds_list_create();
	buffer_seek(buff, buffer_seek_start, 0);
	ds_list_add(thisSprite, buffer_read(buff,buffer_s16) );     //x
	ds_list_add(thisSprite, buffer_read(buff,buffer_s16) );     //y
	ds_list_add(thisSprite, buffer_read(buff,buffer_u16) );     //image_blend      
	ds_list_add(thisSprite, buffer_read(buff,buffer_u16) );     //image_blend   
	ds_list_add(thisSprite, buffer_read(buff,buffer_u16) );     //image_blend   
	xx = ds_list_find_value(thisSprite,index++);
	yy = ds_list_find_value(thisSprite,index++);
	col_red = ds_list_find_value(thisSprite,index++);
	col_green = ds_list_find_value(thisSprite,index++);
	col_blue = ds_list_find_value(thisSprite,index++);
	col = make_color_rgb(col_red,col_green,col_blue);
	if is_undefined(ds_map_find_value(global.PlayerList,key)) { //if the clientID isn't in PlayersList
		show_debug_message("Not in Players List.");
		this_actor = instance_create_layer(xx,yy,0,obj_actor);
		this_actor.x=xx;
		this_actor.y=yy;
		this_actor.direction = 0;
		this_actor.speed = 0;
		this_actor.image_blend = col;
		ds_map_add(global.PlayerList,key,this_actor)
	}
	else{ //or else, if we find the clientID in PlayersList, update his values
		this_actor = ds_map_find_value(global.PlayerList,key);
		this_actor.x=xx;
		this_actor.y=yy;
		this_actor.direction = 0;
		this_actor.speed = 0;
		this_actor.image_blend = col;
	}
	key = ds_map_find_next(global.PlayerInfo, key);
	ds_list_destroy(thisClientBuffer)
	ds_list_destroy(thisSprite)
}

//remove players from list if they are not in global.PlayerInfo
count2 = ds_map_size(global.PlayerList);
key2 = ds_map_find_first(global.PlayerList);
show_debug_message("playerlist:"+ string(count2) + ":" + json_encode(global.PlayerList))
show_debug_message("playerinfo:"+ string(count)  + ":" + json_encode(global.PlayerInfo))

for (i = 0; i < count2; i += 1){
	if is_undefined(ds_map_find_value(global.PlayerInfo,key2)){
		this_actor = ds_map_find_value(global.PlayerList,key2);
		instance_destroy(this_actor);
		ds_map_delete(global.PlayerList,key2);
	}
	key2 = ds_map_find_next(global.PlayerList, key2);
}