

findIndexes list = [ n | n <- [0..length list], sum (take n list) == sum (drop (n+1) list)]

getindex list
  | length list == 0 || (length list == 1 && sum list /= 0) = -1
  | otherwise = head (findIndexes list)

main = print(getindex [-1, 3, -4, 5, 1, -6, 2, 1])
