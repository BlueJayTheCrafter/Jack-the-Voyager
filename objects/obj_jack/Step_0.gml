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
