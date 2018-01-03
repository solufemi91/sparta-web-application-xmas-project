DROP TABLE IF EXISTS spaceObjects;

CREATE TABLE spaceObjects (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  image TEXT

);

insert into spaceObjects (title,body,image) values ('BMW','This is the first post','https://www.autocar.co.uk/sites/autocar.co.uk/files/bmw-1-series-2015-rt-021.jpg');
