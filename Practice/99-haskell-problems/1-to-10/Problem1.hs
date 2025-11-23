import System.Win32 (xBUTTON1)
{-Find the last element of a list. -}

findLastElement :: [a] -> Maybe a
findLastElement [] = Nothing
findLastElement xs = Just (last xs)


findLastElementRecursive :: [a] -> Maybe a
findLastElementRecursive [] = Nothing
findLastElementRecursive [x] = Just x
findLastElementRecursive (x:xs) = findLastElement xs

main :: IO ()
main = do
  print (findLastElement [1,2])          -- Just 2
  print (findLastElement [1,2,3,4])      -- Just 4
  print (findLastElement "hola")         -- Just 'a'
  print (findLastElement ([] :: [Int]))  -- Nothing
  print (findLastElement [True])         -- True

  print (findLastElementRecursive [1,2])          -- Just 2
  print (findLastElementRecursive [1,2,3,4])      -- Just 4
  print (findLastElementRecursive "hola")         -- Just 'a'
  print (findLastElementRecursive ([] :: [Int]))  -- Nothing
  print (findLastElementRecursive [True])         -- True