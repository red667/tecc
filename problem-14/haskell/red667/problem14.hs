import System.Environment

main = print (problem14 999999 [] [])

problem14 :: Integer -> [Integer] -> [Integer] -> Integer
problem14 i max calc
	| i == 1										= head max
	| length max < length calc	= problem14 (i-1) calc (collatz (i-1))
	| otherwise									= problem14 (i-1) max (collatz (i-1))

collatz :: Integer -> [Integer]
collatz 1 = [1]
collatz i
	| even i == True	= i : collatz (div i 2)
	| otherwise				= i : collatz ((3*i) + 1)
