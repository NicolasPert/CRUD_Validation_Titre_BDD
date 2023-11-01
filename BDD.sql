
create table utilisateur (
id SERIAL primary key,
nom VARCHAR(255) not null,
prenom VARCHAR(255) not null,
email VARCHAR(255) not null,
password char(60) not null
);

create table categorie (
id SERIAL primary key,
nom varchar(255) not null
);

create table produit (
id SERIAL primary key,
nom VARCHAR(255) not null,
prix integer not null,
quantité integer not null,
id_categorie integer not null,
foreign key (id_categorie) references categorie (id)
);


ALTER TABLE produit
RENAME COLUMN quantité TO quantity; /* changement de nom de la colonne quantité par quantity car Angular accepte pas le é */

