problem1 limit =
    let list = [ i | i <- [1..limit-1], mod i 3 == 0 || mod i 5 == 0 ]
    in
    foldr (+) 0 list

problem1a limit =
    sum [ i | i <- [1..limit-1], mod i 3 == 0 || mod i 5 == 0 ]

main = 
    let limit = 1000
    in do
        print $ problem1 limit
        print $ problem1a limit
