/**
   CREATE KEYSPACE IF NOT EXISTS myappname WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

CREATE TABLE IF NOT EXISTS myappname.data (
  space text,
  key text,
  value text,
  PRIMARY KEY (space, key)
) with CLUSTERING ORDER BY (key ASC);

INSERT INTO myappname.data (
  space, key,  value
) VALUES ('my', 'app', 'name') IF NOT EXISTS;

UPDATE myappname.data SET value = 'profit!' WHERE space = 'my' AND key = 'app';
*/
