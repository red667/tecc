import System.Environment

main = print (problem5 [1..20] 20)

problem5 :: [Integer] -> Integer -> Integer
problem5 [] i = i
problem5 (x:xs) i
	| mod i x == 0 = problem5 xs i
	| otherwise = problem5 [1..20] (i+20)
