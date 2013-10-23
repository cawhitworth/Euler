naiveFib 0 = 0
naiveFib 1 = 1
naiveFib n = naiveFib (n-1) + naiveFib (n-2)

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
evensUnderLimit limit = [ i | i <- takeWhile (<= limit) fibs, even i]

problem2 limit =
    sum $ evensUnderLimit limit

main = do
    print $ problem2 4000000
