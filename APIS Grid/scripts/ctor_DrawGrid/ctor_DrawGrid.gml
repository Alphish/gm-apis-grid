function DrawGrid(_width, _height) : ApisGrid(_width, _height) constructor {
    fill_all();
    
    static create_cell = function(_column, _row) {
        return new DrawCell(self, _column, _row);
    }
}
