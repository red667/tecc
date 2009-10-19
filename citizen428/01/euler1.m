sum = 0;
for ind=1:999
  if (mod(ind,3) == 0 | mod(ind,5) == 0)
	  sum += ind;
  end
end
fprintf("%d\n", sum);

