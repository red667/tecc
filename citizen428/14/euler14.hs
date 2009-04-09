import Data.List

main :: IO ()
main = 
	let 
		longest = snd (foldl1' (max) lengths)
		lengths = [ (length $ collatz x, x) | x <- [1..1000000]]
	in 
		print longest

collatz :: Integer -> [Integer]
collatz 1 		= [1] 
collatz x 
	| even x 	= x : collatz (x `div` 2)
	| odd x		= x : collatz (3 * x +1)
	
