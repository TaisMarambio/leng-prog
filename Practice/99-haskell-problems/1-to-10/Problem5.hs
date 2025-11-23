{- Reverse a list. -}

myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) = foldl (flip (:)) [] (x:xs)

main :: IO ()
main = do
    print(myReverse [1,2,3]) --[3,2,1]   : 1 (: 2(: 3 []))
    print(myReverse "hola")  --"aloh"
