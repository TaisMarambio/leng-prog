module Problem11 (encodeModified) where

import Problem9 (pack)

{-
Modified run-length encoding.

Modify the result of problem 10 in such a way that if an element has no duplicates 
it is simply copied into the result list. Only elements with duplicates are transferred 
as (N E) lists.

///EXAMPLE///
encodeModified "aaaabccaadeeee"
[(4,'a'), 'b', (2,'c'),(2,'a'),'d',(4,'e')]
-}

data Encoding a = Single a | Multiple Int a deriving (Show, Eq)

encodeModified :: Eq a => [a] -> [Encoding a]
encodeModified [] = []
encodeModified xs = [if length ys == 1 then Single (head ys) else Multiple (length ys) (head ys) | ys <- pack xs]


main :: IO ()
main = do
    print(encodeModified "aaaabccaadeeee") --[Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
        


