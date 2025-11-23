{- Find the K'th element of a list. -}

elementAt :: [a] -> Int -> Maybe a --Yo quiero que me devuelva el elemento K de la lista en la posicion x
elementAt [] _ = Nothing
elementAt (x:_) 1 = Just x
elementAt (_:xs) k 
    | k < 1     = Nothing
    | otherwise = elementAt xs (k-1)

main :: IO ()
main = do
  print (elementAt "haskell" 1)  -- Just 'h'
  print (elementAt "haskell" 7)  -- Just 'l'
  print (elementAt "haskell" 8)  -- Nothing
  print (elementAt [10,20,30] 2) -- Just 20
  print (elementAt [10,20,30] 0) -- Nothing