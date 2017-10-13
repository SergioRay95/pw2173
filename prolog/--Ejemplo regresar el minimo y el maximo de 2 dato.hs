--Ejemplo regresar el minimo y el maximo de 2 datos 
minAndMax :: Int -> Int -> (Int,Int)
minAndMax x y
  | x>=y              = (y,x)
  | otherwise         = (x,y)


primero (x,y) = x
segundo (x,y) = y

sumaPar x = primero x + segundo x

first(x,_,_) = x
second(_,y,_) = y
third(_,_,z) = z
