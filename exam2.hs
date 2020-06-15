arr::[Integer]
arr = [1,2,3]

getArr curArr = filter (\a->if a == [] then False else True) $ map (\a->if (curArr == []) || (last curArr) + a < 5 then curArr ++ [a] else [] ) arr


-- find cur n = foldl (\a b->) cur

find::[[Integer]]->[[Integer]]
find [] = getArr []
find arr = foldl (\a b -> a ++ getArr b) [] arr

-- findAll::[[Integer]]->Integer->[[Integer]]
findAll res 0 = res
findAll res n = findAll (find res) (n-1)
main = do
    print $ findAll [] 5