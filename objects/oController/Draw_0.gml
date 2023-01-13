/// @description Draw Surface

draw_set_font(gravFont);
draw_set_color(c_white);

if (timerRunning){
	currentTime += 1/room_speed;
}

draw_text(20,20,currentTime);



draw_surface(global.surf,0,0);





















































