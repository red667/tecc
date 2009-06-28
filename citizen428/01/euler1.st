res := ((3 to: 999) select: [:i| (i \\3 = 0) | (i \\ 5 = 0)]) 
  inject: 0 into: [:sum :i| sum+i].
res printNl
