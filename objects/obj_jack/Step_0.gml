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

if (place_meeting(x, y + 1, obj_grass1)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_grass1)) {
    while (!place_meeting(x, y + sign(vspd), obj_grass1)) {
        y = y + sign(vspd);
    }
    vspd = 0; 
}

if (place_meeting(x, y + 1, obj_grass2)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_grass2)) {
    while (!place_meeting(x, y + sign(vspd), obj_grass2)) {
        y = y + sign(vspd);
    }
    vspd = 0; 
}

if (place_meeting(x, y + 1, obj_stone)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if(place_meeting(x, y + vspd, obj_stone)) {
    while (!place_meeting(x, y + sign(vspd), obj_stone)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

if (place_meeting(x, y + 1, obj_enemy_wheel )) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if(place_meeting(x, y + vspd, obj_enemy_wheel)) {
    while (!place_meeting(x, y + sign(vspd), obj_enemy_wheel)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

if (place_meeting(x, y + 1, obj_blockage)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_blockage)) {
    while (!place_meeting(x, y + sign(vspd), obj_blockage)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

y += vspd

switch(room) {
	case rm_battle1:
	
	if(mouse_check_button(mb_left)) {
		if(shootCooldown <= 0) {
			instance_create_layer(x, y, "instances", obj_sword2);
			shootCooldown = 45;
		}
	}
}

shootCooldown -= 1;
