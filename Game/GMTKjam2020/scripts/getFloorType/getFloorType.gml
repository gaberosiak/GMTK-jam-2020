///@desc getFloorType
///@arg x
///@arg y

var _x = argument0;
var _y = argument1;

var _floortype = floors.normal;

if position_meeting(_x,_y,obj_fl_normal) _floortype = floors.normal;
if position_meeting(_x,_y,obj_fl_conveyor) _floortype = floors.conveyor;
if position_meeting(_x,_y,obj_fl_ice) _floortype = floors.ice;
if position_meeting(_x,_y,obj_fl_pit) _floortype = floors.pit;
if position_meeting(_x,_y,obj_fl_crusher) _floortype = floors.crusher;
if position_meeting(_x,_y,obj_fl_goop) _floortype = floors.goop;

return _floortype;