enum PLAYERRSTATE {DEFAULT, ATTACK}

state = PLAYERRSTATE.DEFAULT;

keyright = false;
keyleft = false;
keyup = false;
keydown = false;
keyspace = false;

vspd = 0;
hspd = 0;
walkspeed = 6;
grv = .5;
jump_height = -10;
shootCooldown = 0;
keyattack = false;

inputmag = false;
inputdir = 0;

dirfacing = 270;

hitlist = ds_list_create();

damage = 1;

image_xscale = 1;
image_yscale = 1;
