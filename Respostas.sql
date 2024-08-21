--Arquivo de respostas para o desafio

--EX1
SELECT Nome, Ano FROM Filmes

--EX2
SELECT * FROM Filmes ORDER BY Ano

--EX3
SELECT * FROM Filmes WHERE Nome LIKE 'De volta para o Futuro'

--EX4
SELECT * FROM Filmes WHERE Ano = 1997

--EX5
SELECT * FROM Filmes WHERE Ano > 2000

--EX6
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

--EX7
SELECT Ano, COUNT(Ano) AS 'Quantidade' FROM Filmes GROUP BY Ano ORDER BY [Quantidade] DESC

--EX8
SELECT * FROM Atores WHERE Genero LIKE 'M'

--EX9
SELECT * FROM Atores WHERE Genero LIKE 'F' ORDER BY PrimeiroNome

--EX10
SELECT Filmes.Nome AS 'Nome', Generos.Genero AS 'Genero'
FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
			INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--EX11
SELECT Filmes.Nome AS 'Nome', Generos.Genero AS 'Genero'
FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
			INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE [Genero] LIKE 'Mistério'

--EX12
SELECT Filmes.Nome AS 'Nome', Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
			INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor