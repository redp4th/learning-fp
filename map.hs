-- This file contains implementaion of `map` function using fold.
-- The `map'` function of course could be implemented by `foldl` function, but since ++ operator is much slower than : operator, `foldr` is prefered.

-- Remember that `map` takes a function and a list.

map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\ x acc -> f x : acc) [] xs

-- The differnce between `foldl` and `foldr` is not obvious, but `foldr` can works on infinite lists. The explanation is clearly documented on stackoverflow: https://stackoverflow.com/questions/3082324/foldl-versus-foldr-behavior-with-infinite-lists
