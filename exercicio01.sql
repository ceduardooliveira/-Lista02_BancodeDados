-- Exercicio01

SELECT * FROM autor
SELECT * FROM livro
SELECT * FROM livro_autor

-- a. Listar todos os livros e seus autores.
SELECT livro.titulo, autor.nome_autor
FROM livro JOIN livro_autor ON livro.isbn = livro_autor.isbn
JOIN autor ON livro_autor.id_autor = autor.id_autor;


-- b. Encontrar todos os livros escritos por um autor específico.
SELECT livro.titulo
FROM livro
JOIN livro_autor ON livro.isbn = livro_autor.isbn
JOIN autor ON livro_autor.id_autor = autor.id_autor
WHERE autor.nome_autor = 'Mario Sergio'; 

-- c. Encontrar todos os autores que escreveram um livro específico.
SELECT autor.nome_autor
FROM autor
JOIN livro_autor ON autor.id_autor = livro_autor.id_autor
JOIN livro ON livro_autor.isbn = livro.isbn
WHERE livro.titulo = 'A Game of Thrones';