filter' :: Foldable t => (a -> Bool) -> t a -> [a]
filter' p = foldr (\ x acc -> if p x then x : acc else acc) []

