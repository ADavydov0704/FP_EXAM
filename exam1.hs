checkCond:: [a]->(a->Bool)->Bool
checkCond [] f = False
checkCond (x:rest) f  
    | f x == True = True
    | otherwise = checkCond rest f


cond::Integral a => a -> Bool
cond x = (x `mod` 2 == 0)
main = do
    print $ checkCond [1,1] cond
