SELECT * FROM articles WHERE MATCH (title, body) AGAINST ('database');

SELECT * FROM articles WHERE MATCH (title, body) AGAINST ('+database -oracle' IN BOOLEAN MODE);

SELECT * FROM articles WHERE MATCH (title) AGAINST ('database' IN NATURAL LANGUAGE MODE WITH QUERY EXPANSION);
