elect crime.id, vitima.nome as "Vitimas", suspeito.nome from crime
inner join vitima on vitima.id_crime = crime.id
inner join crime_suspeito on crime_suspeito.id_crime = crime.id
inner join suspeito on crime_suspeito.id_suspeito = suspeito.id;

select crime.id as "CRIME ID", vitima.nome as "VITIMA", localizacao.rua, localizacao.bairro from crime
inner join vitima on vitima.id_crime = crime.id
inner join localizacao on localizacao.id = crime.id_local
where crime.id=1;