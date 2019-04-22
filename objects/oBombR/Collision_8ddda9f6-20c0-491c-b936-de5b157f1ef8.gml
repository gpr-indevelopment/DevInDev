audio_play_sound(bombExplosion, 1, false);
instance_create_layer(x, y, "Instances_1", oBombE);
instance_destroy();
with(other)
{
	instance_destroy();
}

