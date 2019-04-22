/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;
grv = 0.6;
walksp = 4;
coinCount = 0;
timer = 0;
spawnSpeed = 1;
instance_create_layer(32, 128, "Instances_1", oScore);
audio_play_sound(backgroundJazz, 1, true);
instance_create_layer(0, 768, "Instances_1", oDifficulty);