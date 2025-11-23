{- Find the number of elements in a list. -}

myLength :: [a] -> Int
myLength [] = 0
myLength [x] = 1
myLength (_:xs) = 1 + myLength xs

main :: IO ()
main = do
  print (myLength "hola")  -- 4
  print (myLength [1,2,3,4,5,6]) --6
  print (myLength "Hello, world!") --13