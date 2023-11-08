-- 1 - Buscar o nome e ano dos filmes
select
	Nome,
	ano
From Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
Select 
	Nome,
	Ano
From Filmes
Order By Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select 
	Nome,
	Ano,
	Duracao
from Filmes
where Nome like 'de volta%'

-- 4 - Buscar os filmes lançados em 1997
select
	Nome,
	Ano,
	Duracao
from Filmes
where Ano = 1997;

--Objetivo 5
-- Buscar os filme lançados Após o ano 2000
Select
	Nome,
	Ano,
	Duracao
from Filmes
where ano >= 2000;

-- 6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
Select 
	Nome,
	Ano,
	Duracao
from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao

-- 7 - Buscar a quandidade de filmes lançados no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

Select 
	ano, 
	count(ano) as quantidade
from Filmes
group by ano
order by quantidade desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

Select * from Atores
where Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

Select * from Atores
where Genero = 'F'
Order by PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero

SELECT a.Nome, c.Genero
FROM Filmes a inner join FilmesGenero b on a.Id = b.IdFilme
	inner join Generos c on b.IdGenero = c.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT a.Nome, c.Genero
FROM Filmes a inner join FilmesGenero b on a.Id = b.IdFilme
	inner join Generos c on b.IdGenero = c.Id
	where c.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select a.Nome, c.PrimeiroNome, c.UltimoNome, b.Papel
from filmes a inner join ElencoFilme b on a.Id = b.IdFilme
	inner join Atores c on b.IdAtor = c.Id


Select * from Filmes
Select * from Atores
select * from ElencoFilme