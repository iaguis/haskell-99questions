-- (*) Find the last but one element of a list.

myButLast :: [a] -> a
myButLast [] = error "Cannot get butLast element of an empty list, you moron!"
myButLast [x] = error "Cannot get butLast element of a singleton list, you moron!"
myButLast (x:y:[]) = x
myButLast (x:xs) = myButLast xs
