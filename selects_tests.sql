elect crime.id, vitima.nome as "Vitimas", suspeito.nome from crime
inner join vitima on vitima.id_crime = crime.id
inner join crime_suspeito on crime_suspeito.id_crime = crime.id
inner join suspeito on crime_suspeito.id_suspeito = suspeito.id;

select crime.id as "CRIME ID", vitima.nome as "VITIMA", localizacao.rua, localizacao.bairro from crime
inner join vitima on vitima.id_crime = crime.id
inner join localizacao on localizacao.id = crime.id_local
where crime.id=1;

select crime.id as "CRIME ID", vitima.nome as "vitima", localizacao.rua, localizacao.bairro, evidencia.item from crime inner join vitima on vitima.id_crime = crime.id inner join localizacao on localizacao.id = crime.id_local
inner join evidencia on evidencia.id_crime = crime.id;

select crime.id, suspeito.nome, descricao.motivo from crime_suspeito inner join crime on crime.id =crime_suspeito.id_crime inner join suspeito on suspeito.id = crime_suspeito.id_suspeito inner join descricao on descricao.id_crime = crime.id and descricao.id_suspeito = suspeito.id;