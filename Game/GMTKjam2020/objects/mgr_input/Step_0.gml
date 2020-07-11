key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
key_lc = mouse_check_button(mb_left);
key_rc = mouse_check_button(mb_right);

key_lc_pressed = mouse_check_button_pressed(mb_left);
key_rc_pressed = mouse_check_button_pressed(mb_right);