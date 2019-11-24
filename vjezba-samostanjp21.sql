drop database if exists samostanjp21;
create database samostanjp21;
use samostanjp21;

create table svecenik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    dekan int not null,
    posao int not null
);

create table posao(
    sifra int not null primary key auto_increment,
    naziv_posla varchar(50) not null
);

create table dekan(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    biskup int not null
);

create table biskup(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    nadbiskup int not null
);

create table nadbiskup(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

alter table biskup add foreign key (nadbiskup) references nadbiskup(sifra);

alter table dekan add foreign key (biskup) references biskup(sifra);

alter table svecenik add foreign key (dekan) references dekan(sifra);
alter table svecenik add foreign key (posao) references posao(sifra);

insert into nadbiskup (ime, prezime) values
  ('Marko', 'Markovic'),
  ('Ivan', 'Ivic'),
  ('Pero', 'Peric');

insert into biskup (ime, prezime, nadbiskup) values
  ('Zdenko', 'Zdenkovic', 1),
  ('Tomislav', 'Tomic', 2),
  ('Anto', 'Antic', 3);

insert into dekan (ime, prezime, biskup) values
  ('Konstantin', 'Kontic', 1),
  ('Augustin', 'Augustic', 2),
  ('Marijan', 'Marijanovic', 3);

  insert into posao (naziv_posla) values
    ('Posao #1'),
    ('Posao #2'),
    ('Posao #3');

  insert into svecenik (ime, prezime, dekan, posao) values
    ('Stipe', 'Stipic', 1, 1),
    ('Goran', 'Goric', 2, 2),
    ('Zoran', 'Zoric', 3, 3);


  update nadbiskup set ime='Petar' where sifra=3;
  update nadbiskup set prezime='Markanovic' where sifra=1;

  update biskup set nadbiskup=1 where sifra=2;
  update biskup set nadbiskup=2 where sifra=1;

  update posao set naziv_posla='Posao 1' where sifra=1;
  update posao set naziv_posla='Posao 2' where sifra=2;

  update svecenik set dekan=2 where sifra=1;
  update svecenik set dekan=1 where sifra=2;

  update dekan set ime='Kendrik' where sifra=1;
  update dekan set prezime='Marikovic' where sifra=3;

  delete from svecenik where sifra=3;

  delete from posao where sifra=3;

  delete from dekan where sifra=3;

  delete from biskup where sifra=3;
    
  delete from nadbiskup where sifra=3;
