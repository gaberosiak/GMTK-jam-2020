/// @description 

audio_play_sound(sfx_win,9,false);
////for debug:
//room_restart();

////this works if the rooms are ordered correctly in the resource tree:
room_goto_next();

//otherwise use: 
//room_goto(other.next_level);