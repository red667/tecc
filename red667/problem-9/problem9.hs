import System.Environment

main = print (product (triangle (998)))

triangle :: Int -> [Int]
triangle a
	| (a < 1)																		= []
	| (a*a)+(b*b)==(c*c) && (b > 1) && (c > 1)	= [a,b,c]
	| otherwise																	= triangle (a-1)
	where
		b = round ( fromIntegral ((1000*1000 - 2000*a) `div` (2000 - (2*a))))
		c = round ( sqrt ( fromIntegral ((a*a)+(b*b))))
