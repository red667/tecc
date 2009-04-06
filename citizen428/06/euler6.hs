main :: IO ()
main = print $ sumSquares - squaresSum
	where 	
		squaresSum = sum . map (^2) $ [1..100]	
		sumSquares = (sum [1..100])^2