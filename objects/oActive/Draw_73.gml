/// @description Draw orbit
// You can write your code in this editor

if (oController.drawing)
{
	
	draw_set_color(myColor);
	surface_set_target(global.surf);
	draw_line(x,y,xprevious, yprevious);
	surface_reset_target();
}


draw_self();



















































