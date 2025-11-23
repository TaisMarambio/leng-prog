{-Find the last-but-one (or second-last) element of a list. -}

myLastButOne :: [a] -> Maybe a
myLastButOne [] = Nothing
myLastButOne [_] = Nothing
myLastButOne [x,_] = Just x
myLastButOne (_:xs) = myLastButOne xs

main :: IO ()
main = do
  print (myLastButOne [1,2])          -- Just 1
  print (myLastButOne [1,2,3,4])      -- Just 3
  print (myLastButOne "hola")         -- Just 'l'
  print (myLastButOne ([] :: [Int]))  -- Nothing
  print (myLastButOne [True])         -- Nothing