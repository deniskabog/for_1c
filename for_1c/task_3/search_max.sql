select authors.surname,COUNT(*)
from authors join book_author on book_author.id_author = authors.id
group by authors.surname ORDER BY 2 DESC LIMIT 1