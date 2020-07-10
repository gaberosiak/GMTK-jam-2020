draw_self();
draw_set_halign(fa_center);
var _score = mgr_score.friends;
str = string(_score) + " friends made it out!"
draw_text(x,y-48, str);
draw_text(x,y+16, "You winned!\nSorry I didn't finish the game\nPress R to restart!")