SELECT * FROM articles WHERE MATCH (title, body) AGAINST ('database');

SELECT * FROM articles WHERE MATCH (title, body) AGAINST ('database' IN NATURAL LANGUAGE MODE);

SELECT * FROM articles WHERE MATCH (title, body) AGAINST ('database' IN NATURAL LANGUAGE MODE WITH QUERY EXPANSION);

SELECT * FROM articles WHERE MATCH (title, body) AGAINST ('+database -oracle' IN BOOLEAN MODE);

SELECT * FROM articles WHERE MATCH (title) AGAINST ('database' WITH QUERY EXPANSION);

SELECT * FROM articles AS a WHERE MATCH (a.title, a.body) AGAINST (@search_term);

SELECT id, MATCH (title, body) AGAINST ('database') AS score FROM articles;

SELECT id FROM articles WHERE MATCH (title) AGAINST ('database') > 0.5 AND status = 1;

SELECT id FROM articles ORDER BY MATCH (title, body) AGAINST ('database' IN BOOLEAN MODE) DESC;
