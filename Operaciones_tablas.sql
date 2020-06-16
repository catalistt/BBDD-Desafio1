CREATE DATABASE posts;
\c posts;

CREATE TABLE posts(
    id VARCHAR(5),
    nombre_usuario VARCHAR(25),
    fecha_creacion DATE,
    contenido VARCHAR(1000),
    descripcion VARCHAR(1000),
    PRIMARY KEY (id)
);

INSERT INTO posts(id,nombre_usuario,fecha_creacion, contenido, descripcion) VALUES ('P01','Pamela', '2020-06-15', 'este es un post1', 'post 1 Pamela');
INSERT INTO posts(id,nombre_usuario,fecha_creacion, contenido, descripcion) VALUES ('P02','Pamela', '2020-06-15', 'este es un post2', 'post 2 Pamela');
INSERT INTO posts(id,nombre_usuario,fecha_creacion, contenido, descripcion) VALUES ('P03','Carlos', '2020-06-15', 'este es un post3', 'post 1 Carlos');

ALTER TABLE posts ADD titulo VARCHAR(15);

UPDATE posts
SET titulo = 'post de Pamela'
WHERE nombre_usuario = 'Pamela';

UPDATE posts
SET titulo = 'post de Carlos'
WHERE nombre_usuario = 'Carlos';

INSERT INTO posts(id,nombre_usuario,fecha_creacion, contenido, descripcion, titulo) VALUES ('P04','Pedro', '2020-06-15', 'este es un post4', 'post 1 Pedro', 'post de Pedro');
INSERT INTO posts(id,nombre_usuario,fecha_creacion, contenido, descripcion, titulo) VALUES ('P05','Pedro', '2020-06-15', 'este es un post5', 'post 2 Pedro', 'post de Pedro');

DELETE FROM posts
WHERE nombre_usuario = 'Carlos';

INSERT INTO posts(id,nombre_usuario,fecha_creacion, contenido, descripcion) VALUES ('P06','Carlos', '2020-06-16', 'este es un nuevo post6', 'post nuevo Carlos');


CREATE TABLE comentarios(
    id VARCHAR(5),
    fecha_hora_creacion TIMESTAMP,
    contenido VARCHAR(1000),
    FOREIGN KEY (id) REFERENCES
    posts(id)    
    );

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES ('P01','21/12/2019 13:00:00.59','Primer comentario');
INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES ('P01','21/12/2019 14:00:00','Segundo comentario');

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES ('P06','10/06/2020 14:00:00','Primer comentario');
INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES ('P06','11/06/2020 14:00:00','Segundo comentario');
INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES ('P06','12/06/2020 14:00:00','Tercer comentario');
INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES ('P06','13/06/2020 14:00:00','Cuarto comentario');

INSERT INTO posts(id,nombre_usuario,fecha_creacion, contenido, descripcion) VALUES ('P07','Margarita', '2020-06-16', 'este es un post', 'post de Margarita');

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES ('P07','16/06/2020 14:00:00','Primer comentario');
INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES ('P07','16/06/2020 14:00:00','Segundo comentario');
INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES ('P07','16/06/2020 14:00:00','Tercer comentario');
INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES ('P07','16/06/2020 14:00:00','Cuarto comentario');