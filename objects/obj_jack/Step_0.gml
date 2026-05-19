 vspd += grv;

if (place_meeting(x, y + 1, obj_cobblestone)) && (keyboard_check_pressed(vk_space)) {
	audio_play_sound(snd_jump, 1, false);
    vspd = jump_height; 
}

if (place_meeting(x, y + vspd, obj_cobblestone)) {
    while (!place_meeting(x, y + sign(vspd), obj_cobblestone)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

if (place_meeting(x, y + 1, obj_grass1)) && (keyboard_check_pressed(vk_space)) {
	audio_play_sound(snd_jump, 1, false);
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_grass1)) {
    while (!place_meeting(x, y + sign(vspd), obj_grass1)) {
        y = y + sign(vspd);
    }
    vspd = 0; 
}

if (place_meeting(x, y + 1, obj_grass2)) && (keyboard_check_pressed(vk_space)) {
	audio_play_sound(snd_jump, 1, false);
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_grass2)) {
    while (!place_meeting(x, y + sign(vspd), obj_grass2)) {
        y = y + sign(vspd);
    }
    vspd = 0; 
}

if (place_meeting(x, y + 1, obj_stone)) && (keyboard_check_pressed(vk_space)) {
	audio_play_sound(snd_jump, 1, false);
    vspd = jump_height;
}

if(place_meeting(x, y + vspd, obj_stone)) {
    while (!place_meeting(x, y + sign(vspd), obj_stone)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

if (place_meeting(x, y + 1, obj_enemy_wheel )) && (keyboard_check_pressed(vk_space)) {
	audio_play_sound(snd_jump, 1, false);
    vspd = jump_height;
}

if(place_meeting(x, y + vspd, obj_enemy_wheel)) {
    while (!place_meeting(x, y + sign(vspd), obj_enemy_wheel)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

if (place_meeting(x, y + 1, obj_blockage1)) && (keyboard_check_pressed(vk_space)) {
	audio_play_sound(snd_jump, 1, false);
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_blockage1)) {
    while (!place_meeting(x, y + sign(vspd), obj_blockage1)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

if (place_meeting(x, y + 1, obj_blockage2)) && (keyboard_check_pressed(vk_space)) {
	audio_play_sound(snd_jump, 1, false);
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_blockage2)) {
    while (!place_meeting(x, y + sign(vspd), obj_blockage2)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

y += vspd

if(room == rm_battle1){	
	if device_mouse_check_button_pressed(0, mb_left) {
		audio_play_sound(snd_cant_shoot, 1, false);
		if(shootCooldown <= 0) {
			instance_create_layer(x, y, "instances", obj_sword2);
			shootCooldown = 120;
			audio_stop_sound(snd_cant_shoot);
			audio_play_sound(snd_shoot, 1, false);
		}
	}
}

if(room == rm_puzzle2){	
	if device_mouse_check_button_pressed(0, mb_left) {
		audio_play_sound(snd_cant_shoot, 1, false);
		if(shootCooldown <= 0) {
			instance_create_layer(x, y, "instances", obj_sword2);
			shootCooldown = 120;
			audio_stop_sound(snd_cant_shoot);
			audio_play_sound(snd_shoot, 1, false);
		}
	}
}

if(room == rm_battle2){	
	if device_mouse_check_button_pressed(0, mb_left) {
		audio_play_sound(snd_cant_shoot, 1, false);
		if(shootCooldown <= 0) {
			instance_create_layer(x, y, "instances", obj_sword2);
			shootCooldown = 120;
			audio_stop_sound(snd_cant_shoot);
			audio_play_sound(snd_shoot, 1, false);
		}
	}
}

shootCooldown -= 1;

if(room == rm_puzzle2){
    var _targets_remaining = instance_number(obj_target2_yes) + 
                             instance_number(obj_target3_yes) + 
                             instance_number(obj_target4_yes);

    if(_targets_remaining == 0){ 
        with(obj_blockage1) instance_destroy();
        with(obj_blockage2) instance_destroy();
    }
}

if(room == rm_battle2){
    var _targets_remaining2 = instance_number(obj_archer);

    if(_targets_remaining2 == 0){ 
        with(obj_blockage1) instance_destroy();
        with(obj_blockage2) instance_destroy();
    }
}
