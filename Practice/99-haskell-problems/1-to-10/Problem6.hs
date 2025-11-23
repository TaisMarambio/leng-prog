{- 
Find out whether a list is a palindrome. 
Hint: A palindrome can be read forward or backward; e.g. (x a m a x).
-}

--Deberia ir chequeando de la ultima letra y la ultima a ver si coinciden
isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome (x:xs) --Podria darla vuelta con el metodo reverse
    | (x:xs) == reverse (x:xs) = True
    |otherwise = False
-- isPalindrome xs = xs == reverse xs ---> esto es lo mismo

isPalindromeOptimized :: Eq a => [a] -> Bool
isPalindromeOptimized xs = xs == reverse xs

main :: IO ()
main = do
    print(isPalindrome [1,2,3])                 --False
    print(isPalindrome "madamimadam")           --True
    print(isPalindrome [1,2,4,8,16,8,4,2,1])    --True
    print(isPalindrome "a")                     --True
    print(isPalindrome ([] :: [Int]))           --True

    print (isPalindromeOptimized [1,2,3])                -- False
    print (isPalindromeOptimized "madamimadam")          -- True
    print (isPalindromeOptimized [1,2,4,8,16,8,4,2,1])   -- True
    print(isPalindromeOptimized "a")                     --True
    print(isPalindromeOptimized ([] :: [Int]))           --True


