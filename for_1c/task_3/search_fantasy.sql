select books.name, group_concat(authors.surname)
 from books
join book_genre
 on book_genre.id_book = books.id
join genre
 on genre.id = book_genre.id_genre and genre.name= "Фантастика"
join book_author
 on book_author.id_book = books.id
join authors
 on authors.id = book_author.id_author
group by books.name