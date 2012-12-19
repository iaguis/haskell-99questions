-- (*) Find the last element of a list.

myLast :: [a] -> a
myLast [] = error "Cannot get last element of an empty list, you moron!"
myLast [x] = x
myLast (x:xs) = myLast xs
