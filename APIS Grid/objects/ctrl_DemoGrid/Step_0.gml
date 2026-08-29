var _mx = mouse_x - x;
var _column = _mx >= 0 ? _mx div sprite_width : -1;
var _my = mouse_y - y;
var _row = _my >= 0 ? _my div sprite_height : -1;

var _cell = example_grid.get_cell_at(_column, _row);
show_debug_message($"X: {_column} Y: {_row} IMG: {!is_undefined(_cell) ? _cell.state : "-"}");

if (!is_undefined(_cell) && mouse_check_button_pressed(mb_left))
    _cell.rotate_state();
