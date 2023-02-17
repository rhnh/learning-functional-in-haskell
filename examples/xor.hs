xor:: Bool -> Bool -> Bool
xor x y = (x||y) && not (x&&y)

xor2 :: Bool -> Bool -> Bool
xor2 True True = False
xor2 True False = True
xor2 False True = True
xor2 False False = False