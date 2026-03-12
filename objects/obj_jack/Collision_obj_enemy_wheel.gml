if (!invincible) {
    lives -= 1;
    invincible = true;
    alarm[0] = 30; 
     
    var dir = point_direction(other.x, other.y, x, y);

    var knockback_speed = 8;
    hsp = lengthdir_x(knockback_speed, dir);
    vsp = lengthdir_y(knockback_speed, dir);
}