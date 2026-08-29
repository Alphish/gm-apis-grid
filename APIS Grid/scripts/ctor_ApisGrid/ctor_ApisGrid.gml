function ApisGrid(_width, _height) constructor {
    width = _width;
    height = _height;
    cells = array_create(_width * _height, undefined);
    
    // -----
    // Setup
    // -----
    
    static fill_all = function() {
        array_map_ext(cells, method(self, map_cell_replace));
    }
    
    static fill_blanks = function() {
        array_map_ext(cells, method(self, map_cell_replace_blank));
    }
    
    static filled = function() {
        fill_all();
        return self;
    }
    
    static create_cell = function(_column, _row) {
        return new ApisGridCell(self, _column, _row);
    }
    
    static map_cell_replace = function(_cell, _idx) {
        var _column = _idx mod width;
        var _row = _idx div width;
        return create_cell(_column, _row);
    }
    
    static map_cell_replace_blank = function(_cell, _idx) {
        if (!is_undefined(_cell))
            return _cell;
        
        var _column = _idx mod width;
        var _row = _idx div width;
        return create_cell(_column, _row);
    }
    
    // ------
    // Access
    // ------
    
    static get_cell_at = function(_column, _row) {
        if (_column < 0 || _column >= width || _row < 0 || _row >= height)
            return undefined;
        
        var _idx = width * _row + _column;
        return cells[_idx];
    }
}
