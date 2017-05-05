padre(ramon,ramon).
padre(ramon,roberto).
padre(ramon,jesus).
padre(elpidio,carlos).
padre(elpidio,elizabeth).
padre(elpidio,mayte).
padre(ramon,yadira).
padre(ramon,claudia).
padre(jrramon,tania).


madre(elvira,ramon).
madre(elvira,roberto).
madre(elvira,jesus).
madre(carmen,carlos).
madre(carmen,elizabeth).
madre(carmen,mayte).
madre(elizabeth,yadira).
madre(elizabeth,claudia).
madre(elizabeth,tania).


abuelos(Abuelo,Nieto):-padre(Abuelo,Padre),padre(Padre,Nieto);madre(Abuelo,Padre),padre(Padre,Nieto);padre(Abuelo,Madre),
madre(Madre,Nieto);madre(Abuelo,Madre),madre(Madre,Nieto).
hermano(A,B):-padre(C,A),padre(C,B),not(A==B).
hijo(Padre,Hijo):-padre(Hijo,Padre),not(Hijo==padre).
tio(Tio,Sobrino):-padre(Padre,Sobrino),hermano(Padre,Tio).
