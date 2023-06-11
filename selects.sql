#Nome|Idade|Suspeito Em Crime
select suspeito.nome, suspeito.idade,count(crime_suspeito.id_crime) as "Participaçoes" from crime_suspeito
inner join suspeito on suspeito.id =crime_suspeito.id_suspeito
group by crime_suspeito.id_suspeito order by suspeito.idade;

#ID do Crime|Suspeito|Idade|Motivo
crime_suspeito.id_crime as "CRIME", suspeito.nome, suspeito.idade, crime_suspeito.motivo from crime_suspeito
inner join suspeito on suspeito.id =crime_suspeito.id_suspeito;

#ID|Nome Vitima|Localização|Descrição
select crime.id as "CRIME ID", vitima.nome as "VITIMA", localizacao.rua, localizacao.bairro, crime.descricao from crime
inner join vitima on vitima.id_crime = crime.id
inner join localizacao on localizacao.id = crime.id_local;

#Mostrar quantidades de suspeitos por crimes
select crime_suspeito.id_crime as "CRIME",count(crime_suspeito.id_suspeito) as "Suspeitos" from crime_suspeito group by id_crime;