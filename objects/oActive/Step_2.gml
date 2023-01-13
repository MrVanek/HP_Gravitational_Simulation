/// @description The magic happens




//reset forces
Fx = 0
Fy = 0

//loop through all objects
for(var i = 0; i < instance_number(oMass); i++){
	
	// Check each object
	var planet = instance_find(oMass,i);
	
	// if it's not me...
	if (planet.id != self.id){
		
		//if I am going to hit the object, add my mass to the other 
		//body and destroy myself.
		
		if (point_distance(x, y, planet.x, planet.y) < speed){
			planet.mass += mass;
			oController.timerRunning = false;
			instance_destroy(self);
			
		} else {
			
			//calculate direction + magnitude
			r_sqr = sqr(point_distance(x, y, planet.x, planet.y));
			F = (gravitationalForce * mass * planet.mass) / r_sqr;

			Fx += lengthdir_x(F, point_direction(x,y, planet.x, planet.y));
			Fy += lengthdir_y(F, point_direction(x,y, planet.x, planet.y));
		}
	}
}

//apply change in speed
hspeed += (Fx / mass) / room_speed
vspeed += (Fy / mass) / room_speed



