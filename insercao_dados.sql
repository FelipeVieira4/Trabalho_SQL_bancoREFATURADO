/*
	Crime: 1
*/

insert into localizacao(rua,bairro) values("R. João Carlos Stein"," Jaraguá Esquerdo");
insert into crime (data,descricao,id_local) values("2023-03-15","A vitima foi morta enquanto saia da joalheria depois de fechar a mesma, o suspeito usou arma de fogo para cometer o assasinato.",1);

insert into vitima (nome,id_crime) values("José Alves",1);

#inserção dos suspeitos do crime(1)
insert into suspeito (nome,telefone,idade) values
("Natanael A.","47666666666",39),
("Renato Ramos","47963577418",28),
("Kevin Motter","47896654123",57);


#Relação entre crime(1) e os suspeitos
insert into  crime_suspeito(id_crime, id_suspeito, motivo) values
(1,1,"Filho mais velho do João Alves."), #Natanael A.
(1,2,"Teve problemas juridicos com João Alves."), #Renato Ramos
(1,3,"Lider de uma ceitar, e estava intereçado em comprar a joalheria do José Alve."); #Kevin Motter

insert into evidencia(item,id_crime) values("Cápisulas de uma arma de fogo.",1);

/*
	Crime: 2
*/

insert into localizacao(rua,bairro) values("R. João Planincheck","Nova Brasília");
insert into crime (data,descricao,id_local)values ("2023-03-30","A vitima foi atropelado, carro e placa não identificados.",2);

insert into vitima (nome,id_crime)values ("Matheus Rodrigues",2);


insert into  crime_suspeito(id_crime, id_suspeito, motivo) values (2,1,"Possível vingança familiar.");#Natanel A.

insert into evidencia(item,id_crime) values("carta de Denuncia",2);

/*
	Crime: 3
*/

insert into localizacao(rua,bairro) values("R. Guilherme C Wackerhagen", "Vila Nova");
insert into crime (data,descricao,id_local) values("2023-4-15","Morto ao sair de uma casa de boliche.",3);

insert into vitima (nome,id_crime) values("Natanael A.",3);


insert into suspeito (nome,telefone,idade) values("Arthur R.","666",26);
insert into  crime_suspeito(id_crime,id_suspeito) values
(3,2),# Renato Ramos
(3,3),# Kevin Motter
(3,4);# Arthur R.

insert into evidencia(item,id_crime) values("Cápisulas de uma arma de fogo.",3);
