/// @description The magic happens


//loop through all objects

gravitationalForce = 30
Fx = 0
Fy = 0



for(var i = 0; i < instance_number(oMass); i++){
	// Check each object
	var planet = instance_find(oMass,i);
	if (planet.id != self.id){
		if (point_distance(x, y, planet.x, planet.y) < speed){
			instance_destroy(self)
		} else {
			
			//calculate direction + magnitude
			r_sqr = sqr(point_distance(x, y, planet.x, planet.y));
			F = (gravitationalForce * mass * planet.mass) / r_sqr;

			Fx += lengthdir_x(F, point_direction(x,y, planet.x, planet.y))
			Fy += lengthdir_y(F, point_direction(x,y, planet.x, planet.y))
		}
	}
}

//Change Speed
hspeed += Fx / room_speed
vspeed += Fy / room_speed



