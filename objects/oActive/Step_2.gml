/// @description The magic happens


//loop through all objects

gravitationalForce = 30
Fx = 0
Fy = 0



for(i = 0; i < instance_number(oStatic); i++){
	
	//calculate direction + magnitude
	var planet = instance_find(oStatic,i);
	r_sqr = sqr(point_distance(x, y, planet.x, planet.y));
	F = (gravitationalForce * mass * planet.mass) / r_sqr;
	show_debug_message(F);
	//show_debug_message(lengthdir_x(point_distance(x,y, planet.x,planet.y), point_direction(x,y, planet.x, planet.y)) )
	Fx += lengthdir_x(F, point_direction(x,y, planet.x, planet.y))
	Fy += lengthdir_y(F, point_direction(x,y, planet.x, planet.y))

}

for(i = 0; i < instance_number(oActive); i++){
	
	//calculate direction + magnitude
	var planet = instance_find(oActive, i);
	if(planet.id != id) {
		r_sqr = sqr(point_distance(x, y, planet.x, planet.y));
		F = (gravitationalForce * mass * planet.mass) / r_sqr;
		show_debug_message(F);
		//show_debug_message(lengthdir_x(point_distance(x,y, planet.x,planet.y), point_direction(x,y, planet.x, planet.y)) )
		Fx += lengthdir_x(F, point_direction(x,y, planet.x, planet.y))
		Fy += lengthdir_y(F, point_direction(x,y, planet.x, planet.y))
	}
	

}

//this part isn't right
/*
Vx = hspeed * cos(direction) 
Vy = vspeed * sin(direction)
show_debug_message(Vx)
*/
hspeed += Fx / room_speed
vspeed += Fy / room_speed

//speed = sqrt(sqr(Vx) +sqr(Vy))
//direction = arctan2(Vy, Vx)



















































