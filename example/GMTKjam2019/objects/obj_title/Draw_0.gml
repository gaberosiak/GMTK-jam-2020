draw_self();

var _text_spacing = 24;
var _text_x = x;
var _text_y = y + _text_spacing + 20;

for (var i = 0; i<array_length_1d(text); i++)
{
	draw_text(_text_x,_text_y,text[i]);
	_text_y += _text_spacing;	
}

draw_text(240,304,"Made by Gabe Rosiak for GMTK Game Jam 2019")