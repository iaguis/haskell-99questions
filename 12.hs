-- (**) Decode a run-length encoded list.

data EncodedElement a = Single a | Multiple Int a

decodeModified :: [EncodedElement a] -> [a]
decodeModified [] = []
decodeModified (x:xs) = case x of
    Single y     -> y : decodeModified xs
    Multiple n y -> (take n $ repeat y) ++ decodeModified xs
