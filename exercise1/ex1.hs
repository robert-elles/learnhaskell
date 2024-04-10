-- while inotifywait -e modify ex1.h1; do ghc ./ex1.hs && ./ex1; done

import Control.Exception (assert)

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits n = (toDigits (n `div` 10)) ++ [(n `mod` 10)] 

toDigitsRev :: Integer -> [Integer]
toDigitsRev 0 = []
toDigitsRev n = [(n `mod` 10)] ++ (toDigitsRev (n `div` 10))

-- check :: 


main = do
    print (toDigits 0)
    print (toDigits 1234)
    print (123 `div` 10)
    print (toDigitsRev 1234)
    -- assert ((toDigitsRev 1234) == [4,3,2,1,0]) "Failed"
