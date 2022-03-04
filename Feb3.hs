import System.Win32 (COORD(yPos), xBUTTON1)

-- Shepherd Shenjere
-- Feb 3, 2022
-- CSC345, Section 02, TR 11am

twoMax :: Int -> Int -> Int 
twoMax x y = if x >= y then x else y

threeMax :: Int  -> Int -> Int -> Int 
threeMax x y z = if (x > y) && (x > z)
                 then x
                 else if (y >= x) && (y >= z)
                     then y
                     else z

threeMax' :: Int -> Int -> Int -> Int 
threeMax' x y z = if x >= y
                  then twoMax x z 
                  else twoMax y z

threeMax'' :: Int -> Int -> Int -> Int 
threeMax'' x y z = twoMax x (twoMax y z)

twoMaxGuards :: Int -> Int -> Int 
twoMaxGuards x y
   | x >= y = x
   | y > x = y

threeMaxGuards :: Int -> Int -> Int -> Int 
threeMaxGuards x y z
   | x >= y && x >= z = x
   | y >= z           = y
   | otherwise        = z

i :: Int
i = 3

j :: Double
j = 3.5

j' :: Float 
j' = 3.5

k :: Integer
k = 5