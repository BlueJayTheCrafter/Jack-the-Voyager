vspd += grv;

if (place_meeting(x, y + 1, obj_cobblestone)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_cobblestone)) {
    while (!place_meeting(x, y + sign(vspd), obj_cobblestone)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

if (place_meeting(x, y + 1, obj_grass)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_grass)) {
    while (!place_meeting(x, y + sign(vspd), obj_grass)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

if (place_meeting(x, y + 1, obj_stone)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_stone)) {
    while (!place_meeting(x, y + sign(vspd), obj_stone)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

y += vspd

switch(room) {
	case Room1:
	
	PickUp = mouse_check_button(mb_left);
	
	event_inherited();
	
	if(PickUp) {
		if(holdingweapon(obj_sword)) {		
			if(shootCooldown <= 0) {
				instance_create_layer(x, y, "instances", obj_sword2);
				shootCooldown = 45;
			}
		}
	}
	

	break;
	
	case Room2:
	
	if(mouse_check_button(mb_left)) {
		if(shootCooldown <= 0) {
			instance_create_layer(x, y, "instances", obj_sword2);
			shootCooldown = 45;
		}
	}
}

shootCooldown -= 1;