xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

button1 = (keyboard_check_pressed(ord("J")) || keyboard_check_pressed(vk_space));
button2 = (keyboard_check_pressed(ord("K")) || keyboard_check_pressed(vk_shift));