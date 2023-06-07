/*
	Crime: 1
    
    José Albes - Dono de joalheria e há boatos que ele era lider de uma ceita
	Natanael L.  - Lenhador estava com muitas dividas
    Renato Ramos - Porte de arma
	Matheus Rodrigues - Jaqueta Preta ex-funcionario da joalheria do José Albes
    Kevin Motter - Fazia parte da ceita do José Albes
    
*/

insert into localizacao(rua,bairro) value("R. João Carlos Stein"," Jaraguá Esquerdo");

insert into crime (data,id_local)values 
("2023-03-15",1);

insert into suspeito (nome,telefone,idade) value
("Natanael L.","47666666666",76),
("Renato Ramos","47963577418",45),
("Matheus Rodrigues","47896654123",39),
("Kevin Motter","47896654123",39);

insert into vitima (nome,id_crime)values
("José Albes",1);


insert into  crime_suspeito(id_crime,id_suspeito) values
(1,1),
(1,2),
(1,3),
(1,4);


insert into evidencia(item,id_crime) values("Pistola 9MM",1);


/*
	Crime: 2
    
	Natanael L.  - Lenhador
    Renato Ramos
    
*/

insert into localizacao(rua,bairro) value("R. João Planincheck","Nova Brasília");
insert into crime (data,id_local)values 
("2023-03-30",2);


insert into vitima (nome,id_crime)values
("Renato Ramos",2);


insert into  crime_suspeito(id_crime,id_suspeito) values
(2,1),
(2,3),
(2,4);
insert into evidencia(item,id_crime) values("Machado",2);

/*

	Crime -3

*/

insert into localizacao(rua,bairro) value("R. Artur Gumz, 709"," Vila Nova");

insert into crime (data,id_local)values 
("2023-4-15",3);


insert into vitima (nome,id_crime)values
("Natanael L.",3);


insert into  crime_suspeito(id_crime,id_suspeito) values
(4,3),
(4,4);

insert into evidencia(item,id_crime) values("Carta Para Familia do Matheus Rodrigues",3);