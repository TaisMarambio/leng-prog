{-
Drop every N'th element from a list.

Example:
* (drop '(a b c d e f g h i k) 3)
(A B D E G H K)

Example in Haskell:
λ> dropEvery "abcdefghik" 3
"abdeghk"
-}

dropEvery :: [a] -> Int -> [a]
dropEvery xs n
  | n <= 0    = xs
  | otherwise = go 1 xs
  where
    go _ []     = []
    go k (y:ys)
      | k == n   = go 1 ys
      | otherwise = y : go (k + 1) ys


main :: IO ()
main = do
    print (dropEvery "abcdefghik" 3) -- "abdeghk"
    print (dropEvery [1,2,3,4,5,6,7,8,9] 2) -- [1,3,5,7,9]