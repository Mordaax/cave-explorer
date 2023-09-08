hsp = 0;
vsp = 0;
grv = 0.2;

gone = 0;
hitfrom = 0;
shake(6,60);

audio_play_sound(playerdeath,1,false);
game_set_speed(30,gamespeed_fps);
with(camera) follow = other.id;


