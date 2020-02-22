#macro NETWORK_LOGIN 0
#macro NETWORK_PLAY 1
#macro PING_CMD 2
#macro LEFT_KEY 0
#macro RIGHT_KEY 1
#macro UP_KEY 2
#macro DOWN_KEY 2
#macro JUMP_KEY 3
#macro KEY_CMD 0
#macro NAME_CMD 1
randomize();
global.InitObject = self;
global.font0 = font_add_sprite(sFont2x, ord(" "), 0, -1);
global.PlayerTotal=0;
global.PlayerNames = ds_list_create();
global.PlayerInfo = ds_list_create();
global.PlayersList = ds_list_create();
count1 = 0;
