/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.font0);
draw_set_color(c_white);
for (var i = 0; i < image_number; i++) 
{
draw_sprite_ext(sprite_index, i, x, y - i, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
draw_set_color(c_white);
draw_set_font(global.font0);
draw_set_halign(fa_center);
draw_text_ext_transformed_color(x,y+10,nametag,1,1000,.75,.75,0,c_white,c_white,c_white,c_white,.1);
