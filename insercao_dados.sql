/*
	Crime: 1

    José Albes - Dono de joalheria e há boatos que ele era lider da ceita iluminati
	Natanael L.  - Lenhador estava com muitas dividas
    Renato Ramos - Porte de arma
	Matheus Rodrigues - Jaqueta Preta ex-funcionario da joalheria do José Albes ja teve passagem pela policia por roubo
    Kevin Motter - Fazia parte da ceita do José Albes

*/

insert into localizacao(rua,bairro) values("R. João Carlos Stein"," Jaraguá Esquerdo");

insert into crime (data,id_local) values("2023-03-15",1);

insert into suspeito (nome,telefone,idade) values
("Natanael A.","47666666666",76),
("Renato Ramos","47963577418",45),
("Matheus Rodrigues","47896654123",39),
("Kevin Motter","47896654123",39);

insert into vitima (nome,id_crime)values
("José Alves",1);


insert into  crime_suspeito(id_crime,id_suspeito) values
(1,1), #Natanael A.
(1,2), #Renato Ramos
(1,3), #Matheus Rodrigues
(1,4); #Kevin Motter


insert into evidencia(item,id_crime) values("Pistola 9MM",1);


/*
	Crime: 2

	Matheus Rodrigues

*/

insert into localizacao(rua,bairro) values("R. João Planincheck","Nova Brasília");
insert into crime (data,id_local)values ("2023-03-30",2);


insert into vitima (nome,id_crime)values ("Matheus Rodrigues",2);


insert into  crime_suspeito(id_crime,id_suspeito) values (2,1);#Natanel A.
insert into evidencia(item,id_crime) values("Machado",2);

/*

	Crime - 3
	Natanael A.

*/

insert into suspeito (nome,telefone,idade) values("Arthur R.","666",26);

insert into localizacao(rua,bairro) values("R. Artur Gumz, 709"," Vila Nova");
insert into crime (data,id_local) values("2023-4-15",3);


insert into vitima (nome,id_crime) values("Natanael A.",3);


insert into  crime_suspeito(id_crime,id_suspeito) values
(3,2),
(3,4),
(3,5);

insert into evidencia(item,id_crime) values("Carta Para Familia do Matheus Rodrigues",3);
