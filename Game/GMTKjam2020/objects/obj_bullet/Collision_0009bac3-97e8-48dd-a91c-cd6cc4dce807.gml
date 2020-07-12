///@desc destroy enemy and self

audio_play_sound(sfx_destruct,6,false);
instance_destroy(other);
instance_destroy();