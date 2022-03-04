-- Shepherd Shenjere
-- Feb 14, 2022
-- CSC345, Section 02

import System.Win32 (COORD(y))

maxOccurs :: Int -> Int -> (Int, Int)
maxOccurs x y
   | x > y       = (x, 1)
   | y > x       = (y, 1)
--   | x == y      = (x, 2)
   | otherwise   =  (x, 2)


maxThreeOccurs :: Int -> Int -> Int -> (Int, Int)
maxThreeOccurs x y z
   | (x > y) && (x > z)       = (x, 1)
   | (y > x) && (y > z)       = (y, 1)
   | (z > x) && (z > y)       = (z, 1)
   | otherwise                = (x, 2)

-- Correct solution
 --maxThreeOccurs :: Int -> Int -> Int -> (Int, Int)
--maxThreeOccurs x y z
--   | z > fst (maxOccurs x y)     = (z, 1)
 --  | z < fst(maxOccurs x y)      = maxOccurs x y
--   | otherwise                   = (z, snd(maxOccurs x y) + 1)