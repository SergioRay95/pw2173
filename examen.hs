--examen sergio raymundo jaime ruiz

--insiso 1 
multiplosext :: Int ->(Int,Int,Int)
multiplosext n = (a,b,c)
 where
 a=sumar([3,3+3..n])
 b=sumar([5,5+5..n])
 c=a+b

sumar::[Int]->Int
sumar [ ] = 0
sumar (x:xs) = x + sumar(xs)

--insiso 2 


elementos :: Int-> [Int]->Int
elementos x a = c
 where
 c=length[n|n<-a,n==x]


-- insiso 3
tama :: [a] -> [Char]
tama a
 |length a>=4 ="Lista es muy grande"
 |otherwise =""
-- insiso 4
aguinaldo :: Int ->Int
aguinaldo a 
 | a <=1 = 6
 | a <=3 = 10
 | a <=10 = 15
 | a <=20= 20
 | a <=30= 30
 | a > 30 = 30+(a-30)