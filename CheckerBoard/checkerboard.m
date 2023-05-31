function M = checkerboard(n, m=n)

  M = false(n, m);
  for i = 1:n
    for j = 1:m
      if mod(i + j, 2) == 0
        M(i,j) = true;
      endif
    endfor
  endfor
  
endfunction
