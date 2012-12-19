-- (*) Reverse a list.

reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []

reverse'' :: [a] -> [a]
reverse'' (x:xs) = (reverse xs) ++ [x]
