type Nombre = String
type Trabajo =String
type Nace = Int
type Muere = Int
type Persona = (Nombre,Trabajo,Nace,Muere)

personas:: [Persona]
personas = 
 [("Cervantes","Literatura",1547,1616),
 ("Velazquez","Pintura",1599,1660),
 ("Picasso","Pintura",1881,1973),
 ("Beethoven","Musica",1770,1823),
 ("Poincare","Ciencia",1854,1912),
 ("Quevedo","Literatura",1580,1654),
 ("Goya","Pintura",1746,1828),
 ("Einstein","Ciencia",1879,1955),
 ("Mozart","Musica",1756,1791),
 ("Botticelli","Pintura",1445,1510),
 ("Borromini","Arquitectura",1599,1667),
 ("Bach","Musica",1685,1750)]

nombres :: [Persona]->[Nombre]
nombres lista = [nom |(nom,_,_,_)<- lista]

nombremusico :: [Persona]->[(Nombre,Trabajo)]
nombremusico lista = [(nom,trab) |(nom,trab,_,_)<- lista,trab == "Musica"]

nombreocup :: [Persona]->String->[(Nombre,Trabajo)]
nombreocup lista a = [(nom,trab) |(nom,trab,_,_)<- lista,trab == a]

anopersona :: [Persona]->Int->[Nombre]
anopersona lista a = [(nom) |(nom,_,nac,muer)<- lista,nac<= a,muer>=a]




-- Si hay clases dia festivo o no 
 --deriving(Eq,Ord,Enum,Read,Show,Bounded)

data DiaSemana = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo 
 deriving(Eq,Ord,Enum,Read,Show,Bounded)

hayClases::DiaSemana->Bool
hayClases a
 | a == Sabado || a == Domingo = False
 | otherwise = True

clases :: DiaSemana->Bool
clases Domingo=False
clases Sabado=False
clases _=True

--ejemplo temperatura culican 
data Temp=Calor | Frio | Templado
 deriving(Eq,Ord,Enum,Read,Show,Bounded)
 -- estaciones segun el mes
data Estacion = Primavera | Verano | Otonio | Invierno
 deriving(Eq,Ord,Enum,Read,Show,Bounded)
-- meses en el ano
data Mes = Enero | Febrero | Marzo | Abril | Mayo | Junio | Julio | Agosto | Septiembre | Octubre | Noviembre | Diciembre
 deriving(Eq,Ord,Enum,Read,Show,Bounded)

estacion :: Mes -> Estacion
estacion a
 | a >= Marzo && a <=Mayo  = Primavera
 | a >= Junio && a <= Agosto = Verano 
 | a >= Septiembre && a <= Noviembre = Otonio
 | otherwise = Invierno

clima :: Estacion->Temp 
clima a
 | a == Primavera = Templado
 | a >= Invierno = Frio
 | otherwise = Calor