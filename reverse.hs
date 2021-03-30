-- Implementation of reverse by `foldl`

reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []
