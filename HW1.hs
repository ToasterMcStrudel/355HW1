-- CptS 355 - Spring 2021 -- Homework1 - Haskell
-- Name:
-- Collaborators: 

module HW1
     where

-- Q1(a) getUniqueRight
-----------------------------------------------------------------------------------------------
--getUniqueRight:: Eq a => [a] -> [a]

--Examples:
-- getUniqueRight [6,5,1,6,4,2,2,3,7,2,1,1,2,3,4,5,6,7] [1,2,3,4,5,6,7]
-- getUniqueRight [('a',1),('a',2),('b',1),('a',2),('c',1),('b',1),('a',2)] [('a',1),('c',1),('b',1),('a',2)]

--getUniqueRight [] [] = []
--getUniqueRight [(a,b)] [(c,d)] = [(a,b)]
--getUniqueRight (x:xs) (y:ys) = x:(getUniqueRight xs ys)


-- Q1(b) getUniqueLeft
-----------------------------------------------------------------------------------------------
--getUniqueLeft:: Eq a => [a] -> [a]

--Examples
-- getUniqueLeft [6,5,1,6,4,2,2,3,7,2,1,1,2,3,4,5,6,7] [6,5,1,4,2,3,7]
-- getUniqueLeft [('a',1),('a',2),('b',1),('a',2),('c',1),('b',1),('a',2)] [('a',1),('c',1),('b',1),('a',2)]




-- Q2(a) cansInLog
-----------------------------------------------------------------------------------------------
--cansInLog :: Num p => [(a, p)] -> p

--Examples:
--cansInLog [("Oceanfish",7),("Tuna",1),("Whitefish",3),("Chicken",4),("Beef",2)] answer is 17

cansInLog [] = 0
cansInLog list = cansInLogHelper list 0
                    where
                         cansInLogHelper [] buff = buff 
                         cansInLogHelper ((meat, cans):xs) buff | (length xs==0) = buff + cans
                                                                | otherwise = cansInLogHelper xs (buff + cans)




-- Q2(b) numCans
-----------------------------------------------------------------------------------------------
--numCans :: (Num p, Eq t) => [((a1, t), [(a2, p)])] -> t -> p

--Examples:
--
myCatsLog = [((7,2020),[("Oceanfish",7),("Tuna",1),("Whitefish",3),("Chicken",4),("Beef",2)]),((8,2020),[("Oceanfish",6),("Tuna",2),("Whitefish",1),("Salmon",3),("Chicken",6)]),((9,2020),[("Tuna",3),("Whitefish",3),("Salmon",2),("Chicken",5),("Beef",2),("Turkey",1),("Sardines",1)]),((10,2020),[("Whitefish",5),("Sardines",3),("Chicken",7),("Beef",3)]),((11,2020),[("Oceanfish",3),("Tuna",2),("Whitefish",2),("Salmon",2),("Chicken",4),("Beef",2),("Turkey",1)]),((12,2020),[("Tuna",2),("Whitefish",2),("Salmon",2),("Chicken",4),("Beef",2),("Turkey",4),("Sardines",1)]),((1,2021),[("Chicken",7),("Beef",3),("Turkey",4),("Whitefish",1),("Sardines",2)])]

-- Q2(c) getMonths
-----------------------------------------------------------------------------------------------



-- Q3 deepCount
-----------------------------------------------------------------------------------------------
--deepCount :: (Num p, Eq t) => t -> [[t]] -> p

--deepCount 5 [[1,2,3],[5,5],[4,5,6],[7,1,2,3,4,5],[5,6]] 5


-- Q4 clusterConsecutive
-----------------------------------------------------------------------------------------------


--insert n item [] | (n==0) = item:[]
  --               | otherwise = []
--insert n item (x:xs) | (n==0) = item:[]
  --                   | otherwise = x:(insert (n-1) item xs)



--sumSales s day [] = 0
--sumSales s day ((store, log):xs) | (s==store)
--                                 | otherwise (sumSales s day xs)