function m = diagsn(rows, cols=rows)
    m = zeros(rows, cols, 'uint32');
    row = 1;
    col = 1;
    num = 0;
    dir = 0;
    while num < rows * cols
        num = num + 1;
        m(row, col) = num;
        if dir == 1
            if row == 1 && col < cols
                col = col + 1;
                dir = -1;
            elseif col == cols
                row = row + 1;
               dir = -1;
            else
                row = row - 1;
                col = col + 1;
            end
        else
            if col == 1 && row < rows
                row = row + 1;
                dir = 1;
            elseif row == rows
                col = col + 1;
                dir = 1;
            else
                row = row + 1;
                col = col - 1;
            end
        end
    end
end
