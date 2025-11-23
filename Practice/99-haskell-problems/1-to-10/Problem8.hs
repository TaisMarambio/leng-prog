{- 
Eliminate consecutive duplicates of list elements.
If a list contains repeated elements they should be replaced with a single copy of the element. 
The order of the elements should not be changed.
-}

compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:xs) --Necesito ver si un elemento es parecido al siguiente y recorrer recursivamente
    | x /= head xs = x : compress xs
    | otherwise = compress xs

main :: IO ()
main = do
    print(compress "aaaabccaadeeee")    --"abcade"
    print(compress [1,1,2,3,4,4,4,5])   --[1,2,3,4,5]