
-- aprendehaskel por el bien de todos pagina buscar
size :: Int
size = 12+13

square :: Int -> Int
square n = n*n



eligeSaludo x = if x then "adios"
else "hola"


minAndMax :: Int -> Int ->(Int,Int)
minAndMax x y
 | x>=y = (y,x)
 | otherwise = (x,y)


primero (x,y) = x
segundo (x,y) = y

sumapar :: (Int,Int) -> Int
sumapar p = primero p + segundo p


maxThreeOccurs :: Int -> Int -> Int -> (Int,Int)
maxThreeOccurs x y z
 | x>=y && y>=z = (x,y)
 | x>=z && z>=y = (x,z)
 | z>=x && x>=y = (z,x)
 | z>=y && y>=x = (z,y)
 | y>=z && z>=x = (y,z)
 | y>=x && x>=z = (y,x)


orderTriple :: (Int,Int,Int) -> (Int,Int,Int)
orderTriple (x,y,z)
 | x>=y && y>=z = (x,y,z)
 | x>=z && z>=y = (x,z,y)
 | z>=x && x>=y = (z,x,y)
 | z>=y && y>=x = (z,y,x)
 | y>=x && x>=z = (y,x,z)
 | y>=z && z>=x = (y,z,x)



distancia :: (Int,Int)->(Int,Int)->Int
distancia (x,y) (a,b) = (b-x)+(a-y)

--pMedio :: (Int,Int)->(Int,Int)->(Double,Double)
--pMedio (x,y) (a,b) = (c,d) 
-- where
--  c=((x+a)/2)
--  d=((y+b)/2)



--listas
--head :: [a]->a
--head (x:_) = x

--tail :: [a]->a
--tail (_:xs) =xs
-- head regresa la cabeza
-- tail regresa toda la lista sin cabeza
-- init regresa toda la lista menos la cola ( valor final)


-- [ x^2 | x <- [1..5]]
--   1         2  
--1° elementos de la lista (agregar)
--2° condiciones a cumplir
--[(x,y)| x<- [1..10], y <- [1..3]]

-- [(x,y)| x<- [0..6], y <- [x..6]] domino


--generadores por comprencion 
--generar los multiplos de n menores a m  

multiplos :: Int ->Int-> [Int]
multiplos n m = [n,n+n..m]
 


--genera los numeros menores a n en una lista 
menores :: Int-> [Int]->[Int]
menores x a = [n|n<-a,n<x]


--patrones
--segun la edad,decirle a un niño de primaria, en q' grado esta 
--nivel :: Int->String


--Guardas
--segun la edad, decirle a la persona que nivel escolar cursa 
--nivelEsc:: Int->[Char]





                                                                                                    







