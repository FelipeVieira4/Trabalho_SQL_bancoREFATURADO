#Nome|Idade|Suspeito Em Crime
select suspeito.nome, suspeito.idade,count(crime_suspeito.id_crime) as "Participaçoes" from crime_suspeito
inner join suspeito on suspeito.id =crime_suspeito.id_suspeito where suspeito.idade > 30
group by crime_suspeito.id_suspeito order by suspeito.idade;

#ID do Crime|Suspeito|Idade|Motivo
select crime_suspeito.id_crime as "CRIME", suspeito.nome, suspeito.idade, crime_suspeito.motivo from crime_suspeito
inner join suspeito on suspeito.id =crime_suspeito.id_suspeito order by crime_suspeito.id;

#ID|Nome Vitima|Localização|Descrição
select crime.id as "CRIME ID", vitima.nome as "VITIMA", crime.data, evidencia.item, localizacao.rua, localizacao.bairro, crime.descricao from crime
inner join vitima on vitima.id_crime = crime.id
inner join localizacao on localizacao.id = crime.id_local
inner join evidencia on evidencia.id_crime = crime.id
#where crime.id_local=1
;

#Mostrar quantidades de suspeitos por crimes
select crime_suspeito.id_crime as "CRIME",count(crime_suspeito.id_suspeito) as "Suspeitos" from crime_suspeito group by id_crime;

#Mostrar idades
select avg(suspeito.idade) as "Média", min(suspeito.idade) as "Menor", max(suspeito.idade) as "Maior" from suspeito;