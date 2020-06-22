CREATE DATABASE posts;
\c posts;

CREATE TABLE posts(
    id_post SERIAL,
    nombre_usuario VARCHAR(25),
    fecha_creacion DATE,
    contenido VARCHAR(1000),
    descripcion VARCHAR(1000),
    PRIMARY KEY (id_post)
);

INSERT INTO posts(nombre_usuario,fecha_creacion, contenido, descripcion) VALUES ('Pamela', '2020-06-15', 'este es un post1', 'post 1 Pamela');
INSERT INTO posts(nombre_usuario,fecha_creacion, contenido, descripcion) VALUES ('Pamela', '2020-06-15', 'este es un post2', 'post 2 Pamela');
INSERT INTO posts(nombre_usuario,fecha_creacion, contenido, descripcion) VALUES ('Carlos', '2020-06-15', 'este es un post3', 'post 1 Carlos');

ALTER TABLE posts ADD titulo VARCHAR(15);

UPDATE posts
SET titulo = 'post de Pamela'
WHERE id_post = 1 or id_post = 2;

UPDATE posts
SET titulo = 'post de Carlos'
WHERE id_post = 3;

INSERT INTO posts(nombre_usuario,fecha_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '2020-06-15', 'este es un post4', 'post 1 Pedro', 'post de Pedro');
INSERT INTO posts(nombre_usuario,fecha_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '2020-06-15', 'este es un post5', 'post 2 Pedro', 'post de Pedro');

DELETE FROM posts
WHERE id_post = 3;

INSERT INTO posts(nombre_usuario,fecha_creacion, contenido, descripcion, titulo) VALUES ('Carlos', '2020-06-16', 'este es un nuevo post6', 'post nuevo Carlos', 'post de Carlos');

CREATE TABLE comentarios(
    id_comentarios SERIAL,
    fecha_hora_creacion TIMESTAMP,
    contenido VARCHAR(1000),
    post_relacionado INT,
    FOREIGN KEY (post_relacionado) REFERENCES
    posts(id_post)    
    );

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_relacionado) VALUES ('21/12/2019 13:00:00.59','Primer comentario pamela',1);
INSERT INTO comentarios(fecha_hora_creacion, contenido, post_relacionado) VALUES ('21/12/2019 14:00:00','Segundo comentario pamela',1);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_relacionado) VALUES ('10/06/2020 14:00:00','Primer comentario',6);
INSERT INTO comentarios(fecha_hora_creacion, contenido, post_relacionado) VALUES ('11/06/2020 14:00:00','Segundo comentario',6);
INSERT INTO comentarios(fecha_hora_creacion, contenido, post_relacionado) VALUES ('12/06/2020 14:00:00','Tercer comentario',6);
INSERT INTO comentarios(fecha_hora_creacion, contenido, post_relacionado) VALUES ('13/06/2020 14:00:00','Cuarto comentario',6);

INSERT INTO posts(nombre_usuario,fecha_creacion, contenido, descripcion, titulo) VALUES ('Margarita', '2020-06-16', 'este es un post', 'post de Margarita','post M');

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_relacionado) VALUES ('16/06/2020 14:00:00','Primer comentario',7);
INSERT INTO comentarios(fecha_hora_creacion, contenido, post_relacionado) VALUES ('16/06/2020 14:00:00','Segundo comentario',7);
INSERT INTO comentarios(fecha_hora_creacion, contenido, post_relacionado) VALUES ('16/06/2020 14:00:00','Tercer comentario',7);
INSERT INTO comentarios(fecha_hora_creacion, contenido, post_relacionado) VALUES ('16/06/2020 14:00:00','Cuarto comentario',7);