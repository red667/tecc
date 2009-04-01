

factorize :: (Integral a) => a -> [a]
factorize n = factorize' n 2 where
    factorize' 1 _ = []
    factorize' n factor
      | n `mod` factor == 0 = factor : factorize' (n `div` factor) factor
      | otherwise           = factorize' n (factor + 1)