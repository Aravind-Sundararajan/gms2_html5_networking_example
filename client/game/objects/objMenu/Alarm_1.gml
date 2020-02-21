/// @description Insert description here
// You can write your code in this editor
//room_goto(level1);
if !instance_exists(objPlayer){
instance_create_layer(random_range(25,325),random_range(25,325),0,objPlayer);
alarm[2] = 1;
}