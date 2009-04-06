main :: IO ()
main = print $ listLCM 20

listLCM :: Integer -> Integer
listLCM x = foldl1 (lcm) [2..x]
