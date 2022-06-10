function matrix = sparse2matrix(cellvec)
matrix(1:cellvec{1,1}(1,1), 1:cellvec{1,1}(1,2)) = cellvec{1,2};
    for ii = 3:length(cellvec)
        matrix(cellvec{1,ii}(1,1), cellvec{1,ii}(1,2)) = cellvec{1,ii}(1,3);
    end
end
