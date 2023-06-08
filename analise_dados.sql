#GIT TEST

select tipoCrime,count(id) as "Quantidades" from crime group by tipoCrime;

select bairro,count(crime.id) from localizacao inner join crime on crime.id_local = localizacao.id group by bairro
order by count(crime.id);

select crime.id as "CRIME",count(suspeito.id) as "Suspeitos" from crime_suspeito
inner join suspeito on suspeito.id=crime_suspeito.id_suspeito
inner join crime on crime.id = crime_suspeito.id_crime
group by crime.id order by crime_suspeito.id;

select avg(suspeito.idade) as "Média", min(suspeito.idade) as "Menor", max(suspeito.idade) as "Maior" from suspeito;
