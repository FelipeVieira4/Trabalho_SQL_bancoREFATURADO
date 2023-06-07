
# Tabela com crimes,suspeitos,vitimas
select crime.id, crime.tipoCrime as "Crime", suspeito.nome as "Suspeito", vitima.nome as "Vitima" from crime_suspeito
inner join crime on crime.id = crime_suspeito.id_crime
inner join suspeito on suspeito.id = crime_suspeito.id_suspeito
inner join vitima on vitima.id_crime = crime.id; #where suspeito.idade < 30;

select crime.tipoCrime, localizacao.bairro from crime
inner join localizacao on crime.id_local=localizacao.id;

select crime_suspeito.id,localizacao.bairro as "Locais", suspeito.nome as "Suspeito" from crime_suspeito
inner join crime on crime.id = crime_suspeito.id_crime
inner join suspeito on suspeito.id = crime_suspeito.id_suspeito
inner join localizacao on localizacao.id = crime.id_local order by localizacao.bairro; #where localizacao.bairro = "rio molha";

select suspeito.idade,suspeito.nome from suspeito order by suspeito.idade;

select crime.id,crime.tipoCrime, evidencia.item as "Evidencia" from crime inner join evidencia on evidencia.id_crime = crime.id;


select crime.id as "CRIME ID", crime.tipoCrime as "Tipo", suspeito.nome as "Suspeito", cumplice.nome as "Cumplice", localizacao.bairro as "Bairro" from crime_suspeito
inner join crime on crime.id = crime_suspeito.id_crime
inner join suspeito on suspeito.id = crime_suspeito.id_suspeito
inner join cumplice on cumplice.id_crime = crime.id
inner join localizacao on crime.id_local = localizacao.id;
