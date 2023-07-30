
import Data.Char
import Prelude hiding (map) 

fact :: Int -> Int 
fact n | n == 0 = 1 
       | n /= 0 = n * fact(n-1) 



roots :: (Float, Float, Float) -> (Float, Float) 
roots(a,b,c) = (x1, x2) where 
    x1 = e + sqrt d / (2 * a) 
    x2 = e - sqrt d / (2 * a) 
    d = b*b - 4*a*c 
    e = - b / (2 * a) 

map :: (a -> b) -> [a] ->[b] 
map _ [] = []  
map func (x : abc) = func x : map func abc 

{-main = do 
    putStrLn "The fatorial of 5 is:"
    print(fact 5) -} 

{-main = do 
    putStrLn "The roots of equation are:" 
    print (roots(1,-8,6)) -} 

{-main = print $ map toUpper "tutorialspoint.com" -} 

eveno :: Int -> Bool 
noto  :: Bool -> String 

eveno x = mod x 2 == 0 
            

noto y = if y  
   then "This is an even Number" 
else "This is an ODD number" 

main = do 
   putStrLn "Example of Haskell Function composition" 
   print ((noto.eveno)16)
