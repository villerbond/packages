function M = fence (n, m=n)
  M = false(n,m);
  x = true(n,1);
  for i = 1:2:m
    M(:,i) = x;
  endfor
endfunction
