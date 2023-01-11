/// @description The magic happens


//loop through all objects

gravitationalForce = 15
Fx = 0
Fy = 0



for(i = 0; i < 1; i++){
	
	//calculate direction + magnitude
	planet = instance_find(oStatic,i);
	//show_debug_message(lengthdir_x(point_distance(x,y, planet.x,planet.y), point_direction(x,y, planet.x, planet.y)) )
	Fx += (gravitationalForce * mass * planet.mass ) / lengthdir_x(sqr(point_distance(x,y, planet.x,planet.y)), point_direction(x,y, planet.x, planet.y))
	Fy += (gravitationalForce * mass * planet.mass ) / lengthdir_y(sqr( point_distance(x,y, planet.x,planet.y)), point_direction(x,y, planet.x, planet.y))

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



















































