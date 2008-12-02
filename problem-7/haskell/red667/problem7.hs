import Control.Monad.ST
import Data.Array.ST
import Data.Array.Base
import System
import Control.Monad
import Data.Bits

main = print (nthPrime 2000000)

nthPrime :: Int -> Int
nthPrime n = runST (sieve n)
 
sieve n = do
    a <- newArray (3,n) True :: ST s (STUArray s Int Bool)
    let cutoff = truncate (sqrt $ fromIntegral n) + n
    go a n cutoff 3 1
 
go !a !m cutoff !n !c
    | n >= m    = return c
    | otherwise = do
        e <- unsafeRead a n
        if e then
            if n < cutoff then
                let loop !j
                        | j < m     = do
                            x <- unsafeRead a j
                            when x $ unsafeWrite a j False
                            loop (j+n)
                        | otherwise = go a m cutoff (n+2) (c+1)
                in loop ( if n < 46340 then n * n else n `shiftL` 1)
             else go a m cutoff (n+2) (c+1)
         else go a m cutoff (n+2) c
