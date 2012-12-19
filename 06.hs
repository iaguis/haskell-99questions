-- (*) Find out whether a list is a palindrome

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = (reverse xs) == xs
