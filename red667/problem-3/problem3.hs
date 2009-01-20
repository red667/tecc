import System.Environment

main = print (maximum (primeFactors 600851475143))

-- primeFactors n = factor n primes
--   where factor n (p:ps) | p*p > n = [n]
--                         | n `mod` p /= 0 = factor n ps
--                         | otherwise = p : factor (n `div` p) (p:ps)
-- 				primes = 2 : filter ((==1) . length . primeFactors) [3,5..]
--

primeFactors n = primeFactors' n 2 where
primeFactors' n factor
	| factor*factor > n   = [n]
	| n `mod` factor == 0 = factor : primeFactors' (n `div` factor) factor
	| factor == 2         = primeFactors' n (factor + 1)
	| otherwise           = primeFactors' n (factor + 2)
