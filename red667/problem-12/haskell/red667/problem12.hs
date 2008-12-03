-- ToDo
-- refactor using:
-- http://www.algebra-online.com/positive-integral-divisors-1.htm
-- 24 has primefactors 2³ and 3¹ - so the number of divisors is
-- (3+1)*(1+1)=8

import System.Environment

main = print (problem12 1 2 1 0)

problem12 :: Integer -> Integer -> Integer -> Integer -> Integer
problem12 triNum triNumi i value
	| value == 500																			= triNum
	| i > toInteger (round(sqrt (fromInteger triNum)))	= problem12 (triNum + triNumi) (triNumi + 1) 1 0
	| mod triNum i == 0																	=	problem12 triNum triNumi (i+1) (value+2)
	| otherwise																					= problem12 triNum triNumi (i+1) value
