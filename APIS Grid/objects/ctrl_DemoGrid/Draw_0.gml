for (var j = 0; j < example_grid.height; j++)
for (var i = 0; i < example_grid.width; i++) {
    var _cell = example_grid.get_cell_at(i, j);
    draw_sprite(sprite_index, _cell.state, x + sprite_width * i, y + sprite_height * j);
}
