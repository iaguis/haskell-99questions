myLength :: [a] -> Int
myLength = foldl (\n _ -> n + 1) 0

myLength' :: [a] -> Int
myLength' = foldr ((+) . (const 1)) 0

myLength'' = sum . map (\_->1)
