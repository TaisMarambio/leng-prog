module Problem9 (pack) where
{-
Pack consecutive duplicates of list elements into sublists.
If a list contains repeated elements they should be placed in separate sublists.
Example:
λ> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
["aaaa","b","cc","aa","d","eeee"]
-}

pack :: Eq a => [a] -> [[a]]
pack []     = []
pack (x:xs) =
  let (iguales, resto) = span (== x) xs --span me devuelve una TUPLA de 2 listas
                                        --en "iguales" ahora tengo los iguales a x y en "resto" 
                                        --lo que quede de la lista que no cumplio con el "== x"
                                        --Aca solo estoy desarmando la tupla en 2 nombres
  in (x:iguales) : pack resto

main :: IO ()
main = do
    print(pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'])
    --["aaaa","b","cc","aa","d","eeee"]

    print(pack "aaaabccaadeeee") --((A A A A) (B) (C C) (A A) (D) (E E E E))