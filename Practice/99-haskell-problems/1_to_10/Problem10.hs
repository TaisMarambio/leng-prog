module Problem10 (encode) where

import Problem9 (pack)

{-
Run-length encoding of a list.

Use the result of Problem 9 to implement the so-called run-length encoding data compression method. 
Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of 
the element E.

///EXAMPLE///
encode "aaaabccaadeeee"
[(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
-}

--Asumo que deberia usar el pack y despues es solo devolver tuplas con el length de cada sublista

encode :: Eq a => [a] -> [(Int, a)]
encode xs = [(length ys, head ys) | ys <- pack xs]

main :: IO ()
main = do
    print(encode "aabbaaa") -- [(2,'a'),(2, 'b'),(3, 'a')]
    print(encode "aaaabccaadeeee") --[(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]