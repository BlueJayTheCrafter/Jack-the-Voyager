if (instance_exists(obj_jack)) {
	var arrow = instance_create_layer(x, y, "Instances", obj_arrow);
		arrow.direction = point_direction(x, y, obj_jack.x, obj_jack.y);
		arrow.speed = 5;
		arrow.image_angle = arrow.direction;
}
alarm[0] = 60; 
alarm[0] = enemy_cooldown;