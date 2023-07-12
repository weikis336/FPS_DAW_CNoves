--Crea la base de datos cine
create Database cine
--pasamos a usar la base de datos creada
use cine
--Crea las tablas film actor y character con sus atributos
Create table nombre film (
                    film_id int(15) primary key,
                    title varchar(50),
                    run_time int(3), 
                    genres varchar(20),
                    ratting int(2), 
                    synopsis varchar(200),
                    directors varchar(100),
                    country varchar(100),
                    release_date date,
                    languaje varchar(25),
                    soundtrack varchar(20),
                    screenwriters varchar(20),
);
create table actor (
                     actor_id int(16) primary key,
                     fullname varchar(25),
                     birthdate date,
                     death_date date,
                     nationality varchar(30),
                     biography varchar(150)

);
create table film_character (
                        playedby varchar(30),
                        characer_id int(20) primary key,
                        character_fullname varchar(30),
                        char_description varchar(50),
                        protagonist BOOL

);
--modificaremos la tabla de actores para dejar que cada actor tenga un nombre unico
alter table actor
modify fullname varchar(25) unique
--modificaremos la tabla de actores para dejar que compruebe que la fecha de nacimiento sea anterior a la muerte
alter table actor
add constraint chk_birthwithdeaht check((birthdate<death_date))
--Modificaremos la tabla de film para dejar obligar a que title no sea nulo
alter table film
modify title varchar(50) not null
--seguiremos modificando la tabla film y dejaremos a rating con valor 0 por defecto
alter table film 
alter ratting set default '0'

--Crearemos el atributo oscar en la tabla de personajes
alter table film_character
add oscar varchar=("AO"or(AE)or(SE)or(SO))
--crearemos el atributo genero para la tabla de actores, como se pueden espicificar generos no tradicionales no pondremos una eleccion
alter table actor
add gender varchar(20)

--inpondremos las condiciones en el valor de ratings para que sea inferior a 10
alter table film
add constraint chk_rating check((ratting<=10))
--comprovaremos que la fecha de nacimiento sea superior a 1900
alter table film 
add constraint chk_birth check((birthdate>1900))
--obligaremos a que las peliculas tengan una duracion minima de 300
alter table film 
add constraint chk_run_time check((run_time>300))
--eliminaremos la condicion anterior
alter table film 
drop constraint chk_run_time;
--eliminaremos la casilla soundtrack de film
alter table film
drop soundtrack
--crearemos una indexacion para la casilla de los directores
create index directors
on film (directors);
--condicionaremos la casilla de nombres de los personajes
alter table film_character
modify character_fullname varchar(30) unique
--cambiaremos el nombre a la tabla de acores por estrellas
alter table actor rename star;
--eliminaremos la tabla de personajes
drop table film_character
--crearemos un usuario para consultar la tabla de film.
CREATE USER 'alejandro'@'localhost' IDENTIFIED BY 'RETAKE02';
--le pondremos permiso de select
GRANT select ON cine.film TO 'alejandro'@'localhost';
