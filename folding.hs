-- using fold to implement a general accumulator
sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0 

prod' :: (Num a) => [a] -> a
prod' = foldl (*) 1 
