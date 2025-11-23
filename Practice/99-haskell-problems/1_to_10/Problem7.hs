import Text.XHtml.Strict (p)
{-
Flatten a nested list structure.
Transform a list, possibly holding lists as elements 
into a `flat' list by replacing each list with its elements (recursively).
 -}

data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List xs) = flattenList xs
    where
        flattenList [] = []
        flattenList (y:ys) = flatten y ++ flattenList ys

flatten2 :: NestedList a -> [a]
flatten2 (Elem x) = [x]
flatten2 (List xs) = concatMap flatten xs

{-
 NestedList a -> es el nombre del tipo
 a -> es un parametro de tipo (tipo generico)
 NestedList a es una FAMILIA de TIPOS:
    -NestedList Int
    -NestedList Char
    -NestedList String
    etc

El '=' nos indica -> "Se puede construir de esta(s) forma(s)"

Elem a → primer constructor del tipo: Elem :: a -> NestedList a
Representa un solo elemento “plano”.

| → “o” (otra forma de construir el mismo tipo).

List [NestedList a] → segundo constructor del tipo: List :: [NestedList a] -> NestedList a
Representa una lista de cosas que, a su vez, son NestedList a.

Ahí está la recursión: NestedList a se define en términos de [NestedList a].

///EJEMPLOS///
Elem 5 -- un solo número “envuelto”

List [Elem 1, Elem 2] -- algo como: [1,2]

List [Elem 1, List [Elem 2, Elem 3]] -- algo como: [1, [2,3]]

Si quiero representar algo como “una lista que puede tener elementos o sublistas”, hago:
ejemplo :: NestedList Int
ejemplo = List [Elem 1, List [Elem 2, Elem 3]] --> Ahí todo es del mismo tipo externo NestedList Int:
Elem 1 :: NestedList Int
List [Elem 2, Elem 3] :: NestedList Int
Y List [...] también es NestedList Int.

Con eso puedo tener una lista HOMOGENEA.
-}

main :: IO ()
main = do
    print (flatten (Elem 5))
    print (flatten (List [Elem 1, Elem 2, Elem 3]))
    print (flatten (List [Elem 1, List [Elem 2, Elem 3]]))