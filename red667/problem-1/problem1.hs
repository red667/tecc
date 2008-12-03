import System.Environment

main = print (problem1 3 0)

problem1 :: Integer -> Integer -> Integer
problem1 count sum
	| count == 1000															= sum
	| (mod count 3 == 0) || (mod count 5 == 0)	= problem1 (count + 1) (sum + count)
	| otherwise																	= problem1 (count + 1) sum
