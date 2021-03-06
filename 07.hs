-- (**) Flatten a nested list structure.

data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List x) = concatMap flatten x

flatten' :: NestedList a -> [a]
flatten' (Elem x) = [x]
flatten' (List (x:xs)) = flatten x ++ flatten (List xs)
flatten' (List []) = []
