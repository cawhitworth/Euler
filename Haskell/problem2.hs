-- naiveFib 0 = 0
-- naiveFib 1 = 1
-- naiveFib n = naiveFib (n-1) + naiveFib (n-2)


problem2 limit =
    let fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
    in sum [ i | i <- takeWhile (<= limit) fibs, even i]

main = do
    print $ problem2 4000000
