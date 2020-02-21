//count1++
//if count1 == 10
//{
//alarm[0] = count1
//count1 = 0
//}
emit_asyncLogins();
emit_asyncPlayerInfo();

var count = ds_map_size(global.PlayerInfo);
var key = ds_map_find_first(global.PlayerInfo);

for(ii=0;ii<count;ii++){    
	var index = 0;
	thisClientBuffer = json_decode(ds_map_find_value(global.PlayerInfo,key));
	thisText = thisClientBuffer[? "playerInfo"];
	buff = buffer_base64_decode(thisText);
	thisSprite = ds_list_create();
    ds_list_add(thisSprite, buffer_read(buff,buffer_s16) );     //x
    ds_list_add(thisSprite, buffer_read(buff,buffer_s16) );     //y
	ds_list_add(thisSprite, buffer_read(buff,buffer_s16) );     //direction
    ds_list_add(thisSprite, buffer_read(buff,buffer_s16) );     //sprite_index
    //ds_list_add(thisSprite, buffer_read(buff,buffer_s16) );     //image_index
    ds_list_add(thisSprite, buffer_read(buff,buffer_s32) );     //image_blend        
    ds_list_add(thisSprite, buffer_read(buff,buffer_string) );  // player name
	xx = ds_list_find_value(thisSprite,index++);
    yy = ds_list_find_value(thisSprite,index++);
	dir = ds_list_find_value(thisSprite,index++);
    //sp = ds_list_find_value(thisSprite,index++);
    spindex = ds_list_find_value(thisSprite,index++);
    col = ds_list_find_value(thisSprite,index++);
    name = ds_list_find_value(thisSprite,index++);
	if is_undefined(ds_map_find_value(global.PlayersList,key)) //if the clientID isn't in PlayersList
	{
		with(instance_create_depth(xx,yy,0,objActor)) //create a new character obj instance with key clientID
		{
			id.nametag = other.name;
			id.image_blend = other.col;
			id.x = other.xx;
			id.y = other.yy;
			id.direction = other.dir;
			id.sprite_index = other.spindex;
			ds_map_add(global.PlayersList,key,id)
		}
	}
	else //or else, if we find the clientID in PlayersList, update his values
	{
		thisPlayer = ds_map_find_value(global.PlayersList,key);
		//thisPlayer.hsp = (xx - thisPlayer.x)/100;
		//thisPlayer.vsp = (yy - thisPlayer.y)/100;
		thisPlayer.x = xx;
		thisPlayer.y = yy;
		thisPlayer.image_blend = col;
		thisPlayer.direction = dir;
	}

    key = ds_map_find_next(global.PlayerInfo, key);
	ds_list_destroy(thisClientBuffer)
	ds_list_destroy(thisSprite)
}

//clean up, remove actor object instances
//var count = ds_map_size(global.PlayersList);
//var key = ds_map_find_first(global.PlayersList);
//for(ii=0;ii<count;ii++){ 
//	if is_undefined(ds_map_find_value(global.PlayerInfo,key)){
//	ds_map_delete(global.PlayersList, key);
//	}
//key = ds_map_find_next(global.PlayersList, key);
//}