function DrawCell(_grid, _column, _row) : ApisGridCell(_grid, _column, _row) constructor {
    state = 0;
    
    static rotate_state = function() {
        state += 1;
        state = state mod 3;
    }
}
