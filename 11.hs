-- (*) Modified run-length encoding.

-- Modify the result of problem 10 in such a way that if an element
-- has no duplicates it is simply copied into the result list.
-- Only elements with duplicates are transferred as (N E) lists.

data EncodedElement a = Single a | Multiple Int a deriving (Show)

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode (x:xs) = encode' 1 x xs
  where encode' n x [] = [(n, x)]
        encode' n x (y:ys)
            | x == y = encode' (n + 1) y ys
            | otherwise = (n,x) : encode' 1 y ys

encodeModified :: Eq a => [a] -> [EncodedElement a]
encodeModified = map encodeHelper . encode
  where encodeHelper (1, x) = Single x
        encodeHelper (n, x) = Multiple n x
