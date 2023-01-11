/// @description The magic happens


//loop through all objects

gravitationalForce = 200
Fx = 0
Fy = 0



for(i = 0; i < 1; i++){
	
	//calculate direction + magnitude
	planet = instance_find(oStatic,i);
	show_debug_message(lengthdir_x(point_distance(x,y, planet.x,planet.y), point_direction(x,y, planet.x, planet.y)) )
	Fx += (gravitationalForce * mass * planet.mass ) / sqr( lengthdir_x(point_distance(x,y, planet.x,planet.y), point_direction(x,y, planet.x, planet.y)) )
	Fy += (gravitationalForce * mass * planet.mass ) / sqr( lengthdir_y(point_distance(x,y, planet.x,planet.y), point_direction(x,y, planet.x, planet.y)) )

}

Vx = speed * cos(direction) 
Vy = speed * sin(direction)

Vx += Fx / room_speed
Vy += Vy / room_speed

speed = sqrt(sqr(Vx) +sqr(Vy))
direction = arctan2(Vy, Vx)



















































