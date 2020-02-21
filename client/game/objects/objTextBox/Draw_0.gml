/// Drw the text box and "caption"
draw_self();

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(global.font0);
draw_text( x+5,y+5, Text );

draw_text( x,y-20, "Player's name" );
