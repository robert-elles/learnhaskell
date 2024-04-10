toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits n = (toDigits (n `div` 10)) ++ [(n `mod` 10)] 

toDigitsRev :: Integer -> [Integer]
toDigitsRev n = toDigits n

main = do
    print (toDigits 0)
    print (toDigits 1234)
    print (toDigitsRev 1234 == [4,3,2,1])
