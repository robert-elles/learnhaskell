toDigits :: Integer -> [Integer]
toDigits n
    | n <= 0 = []
    | otherwise = toDigits (n `div` 10) ++ [n `mod` 10]
-- toDigitsRev :: Integer -> [Integer]

main = do
    print (toDigits 1234)
    print (toDigits 1234)
