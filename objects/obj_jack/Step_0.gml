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

if (place_meeting(x, y + 1, obj_blockage1)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_blockage1)) {
    while (!place_meeting(x, y + sign(vspd), obj_blockage1)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

if (place_meeting(x, y + 1, obj_blockage2)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_blockage2)) {
    while (!place_meeting(x, y + sign(vspd), obj_blockage2)) {
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
	
	case rm_puzzle2:
	
	if(mouse_check_button(mb_left)) {
		if(shootCooldown <= 0) {
			instance_create_layer(x, y, "instances", obj_sword2);
			shootCooldown = 45;
			
		}
	}
}

shootCooldown -= 1;

if (room == rm_puzzle2){
    var _targets_remaining = instance_number(obj_target2_yes) + 
                             instance_number(obj_target3_yes) + 
                             instance_number(obj_target4_yes);

    if (_targets_remaining == 0){
        with (obj_blockage1) instance_destroy();
        with (obj_blockage2) instance_destroy();
    }
}