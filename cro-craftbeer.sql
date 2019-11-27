drop database if exists crocraftbeer;
create database crocraftbeer;
  use crocraftbeer;

  create table brewery(
    breweryid int not null primary key auto_increment,
    name varchar(50) not null,
    address varchar(50),
    city int not null,
    email varchar(50),
    website varchar(50) not null
  );

  create table city(
    cityid int not null primary key auto_increment,
    name varchar(50) not null,
    zip_code varchar(50) not null
  );

  create table beer_type(
    beer_typeid int not null primary key auto_increment,
    name varchar(50) not null
  );

  create table sale_location(
    sale_locationid int not null primary key auto_increment,
    name varchar(50) not null,
    city int,
    address varchar (50),
    type_of_location varchar(50) not null
  );

  create table beer(
    beerid int not null primary key auto_increment,
    name varchar(50) not null,
    beer_type int not null,
    alcohol_content varchar(50) not null,
    brewery int not null
  );

  create table beer_sale(
    beer_saleid int not null primary key auto_increment,
    beer int not null,
    sale_location int not null
  );

  alter table beer add foreign key (beer_type) references beer_type(beer_typeid);
  alter table beer add foreign key (brewery) references brewery(breweryid);

  alter table beer_sale add foreign key (beer) references beer(beerid);
  alter table beer_sale add foreign key (sale_location) references sale_location(sale_locationid);

  alter table brewery add foreign key (city) references city(cityid);

  alter table sale_location add foreign key (city) references city(cityid);


  insert into city (name, zip_code) values
    ('Buje', '52460'), /*ID1*/
    ('Zagreb', '10090'), /*ID2*/
    ('Zagreb', '10000'), /*ID3*/
    ('Osijek', '31000'), /*ID4*/
    ('Daruvar', '43500'), /*ID5*/
    ('Split', '21000'), /*ID6*/
    ('Rijeka', '51000'), /*ID7*/
    ('Slavonski Brod', '35000'), /*ID8*/
    ('Jaska', '10450'); /*ID9*/

insert into brewery (name, address, city, email, website) values
  ('Pivovara Medvedgrad', 'Huzjanova 36', 2, 'prodaja@pivovara-medvedgrad.hr', 'pivovara-medvedgrad.hr'), /*ID1*/
  ('Zmajska Pivovara', 'Kreše Golika 3a', 2, 'info@zmajskapivovara.hr', 'zmajskapivovara.hr'), /*ID2*/
  ('5th Element', 'Reljkovićeva 2', 5, 'info@5th-element.com.hr', '5th-element.com.hr'), /*ID3*/
  ('Varionica', 'Gospočak 69', 3, 'info@varionica.com', 'varionica.com'), /*ID4*/
  ('Nova Runda', 'Trg Josipa Jurja Strossmayera 17', 9, 'info@novarunda.com', 'novarunda.com'), /*ID5*/
  ('The Garden Brewary', 'Kanalski put 1', 3, 'info@thegarden.hr', 'thegarden.hr'); /*ID6*/

insert into beer_type (name) values
  ('India Pale Ale'), /*1*/
  ('Pale Ale'), /*2*/
  ('American Pale Ale'), /*3*/
  ('Stout'), /*4*/
  ('Brown Ale'), /*5*/
  ('Pilsner'), /*6*/
  ('American Blonde Ale'), /*7*/
  ('Wheat Beer'), /*8*/
  ('Lager'),/*9*/
  ('Doppelbock'),/*10*/
  ('Imperial IPA'); /*11*/

  insert into sale_location (name, city, address, type_of_location) values
    ('Dublin Dostava', 4, 'Ul. Ivana Gundulića 5', 'Store'), /*BreweryID1*//*BreweryID2*/ /*SaleLocID1*/
    ('Super Konzum', 4, 'Svilajska 31a', 'Store'),/*BreweryID1*//*BreweryID2*//*BreweryID3*/ /*SaleLocID2*/
    ('American Bar', 4, 'Županijska ulica 5', 'Bar'), /*BreweryID1*//*BreweryID4*/ /*SaleLocID3*/
    ('Beertija', 4, 'Ul. Pavla Pejačevića 5', 'Bar'), /*BreweryID2*//*BreweryID5*/ /*SaleLocID4*/
    ('Caffe bar HIR', 4, 'Ul. fra Andrije Kačića Miošića 11', 'Bar'),/*BreweryID2*/ /*SaleLocID5*/
    ('Pivnica Runda', 4, 'Ul. Stjepana Radića', 'Bar'),/*BreweryID4*/ /*SaleLocID6*/
    ('Hop In Craft Beer Bar', 3, 'Dubravkin trg 3', 'Bar'), /*BreweryID1*//*BreweryID5*/ /*SaleLocID7*/
    ('Kvart', 3, 'Dinarska ulica 34', 'Bar'),/*BreweryID1*//*BreweryID5*/ /*SaleLocID8*/
    ('Billa', 3, 'Radnička cesta 50', 'Store'),/*BreweryID1*/ /*SaleLocID9*/
    ('Retro Caffe', 3, 'Savska cesta 180', 'Bar'),/*BreweryID2*/ /*SaleLocID10*/
    ('Pivoteka', 3, 'Stupnička ulica 14', 'Bar'),/*BreweryID2*//*BreweryID4*/ /*SaleLocID11*/
    ('Beershop', 3, 'Ljubljanica 6', 'Store'),/*BreweryID2*//*BreweryID4*/ /*SaleLocID12*/
    ('Spar', 3, 'Jurišićeva ulica 13', 'Store'),/*BreweryID3*//*BreweryID2*/ /*SaleLocID13*/
    ('5th Element Store', 3, 'Iica 251', 'Store'),/*BreweryID3*/ /*SaleLocID14*/
    ('Zion Bar', 3, 'Unska ulica 2C', 'Bar'), /*BreweryID4*/ /*SaleLocID15*/
    ('Brew Bar', 3, 'Ul. kneza Domagoja 25', 'Bar'),/*BreweryID4*/ /*SaleLocID16*/
    ('Raspjevane Kokoši', 3, 'Poljička 4', 'Bar'),/*BreweryID5*/ /*SaleLocID17*/
    ('Program', 3, 'Martićeva 14F', 'Bar'),/*BreweryID5*/ /*SaleLocID18*/
    ('Roto Dinamic', 8, 'J.J. Strossmayera 57', 'Store'),/*BreweryID1*//*BreweryID2*/ /*SaleLocID19*/
    ('Kuća Piva', 8, 'Ul. Ante Starčevića 17', 'Bar'),/*BreweryID4*/ /*SaleLocID20*/
    ('Leggiero Bar', 8, 'Josipa Rimca 7', 'Bar'),/*BreweryID4*/ /*SaleLocID21*/
    ('Pipa Bar', 8, 'Petra Krešimira IV 12', 'Bar'),/*BreweryID5*/ /*SaleLocID22*/
    ('Super Konzum', 7, 'Janka Polića Kamova 81a', 'Bar'),/*BreweryID1*//*BreweryID2*/ /*SaleLocID23*/
    ('Eco Caffe Bar', 7, 'Kvaternikova ulica 3a', 'Bar'),/*BreweryID1*/ /*SaleLocID24*/
    ('River Pub', 7, 'Ulica Frane Supila 12', 'Bar'),/*BreweryID1*/ /*SaleLocID25*/
    ('Bard Celtic Pub', 7, 'Grivica ul. 6B', 'Bar'),/*BreweryID2*/ /*SaleLocID26*/
    ('Filodrammatica', 7, 'Korzo 28', 'Bar'),/*BreweryID2*/ /*SaleLocID27*/
    ('Caffe bar Like', 7, 'Tizianova ul. 7', 'Bar'),/*BreweryID4*/ /*SaleLocID28*/
    ('Badi Pub', 7, 'Frankopanski trg 1', 'Bar'),/*BreweryID4*/ /*SaleLocID29*/
    ('Caffe bar Gim', 7, 'Kumičićeva ul. 3C', 'Bar'),/*BreweryID4*/ /*SaleLocID30*/
    ('Tvornica piva', 7, 'Trg Viktora Bubnja bb', 'Bar'),/*BreweryID5*/ /*SaleLocID31*/
    ('Metro', 6, 'Bana Jelačića 27', 'Store'),/*BreweryID1*//*BreweryID2*/ /*SaleLocID32*/
    ('No Stress', 6, 'Iza loze 1', 'Bar'),/*BreweryID1*/ /*SaleLocID33*/
    ('Dva Tona', 6, 'Carrarina poljana 1', 'Bar'),/*BreweryID1*/ /*SaleLocID34*/
    ('Na Kantunu', 6, 'Dominisova 9', 'Bar'),/*BreweryID1*//*BreweryID2*/ /*SaleLocID35*/
    ('Sanctuary', 6, 'Poljana Stare Gimnazije 1', 'Bar'),/*BreweryID2*//*BreweryID4*/ /*SaleLocID36*/
    ('Pecado', 6, 'Trogirska ulica 7', 'Bar'),/*BreweryID4*/ /*SaleLocID37*/
    ('Plan B', 6, 'Slobode ulica 16A', 'Bar'),/*BreweryID5*/ /*SaleLocID38*/
    ('Black Dog Bar', 6, 'Hrvojeva 10', 'Bar'),/*BreweryID5*/ /*SaleLocID39*/
    ('The Flag Pub', 6, 'Domovinskog rata 10', 'Bar');/*BreweryID5*/ /*SaleLocID40*/

 insert into beer (name, beer_type, alcohol_content, brewery) values
   ('Zlatni Medvjed', 6, '4.4%', 1),/*1*/
   ('Grička Vještica', 10, '7.5%', 1),/*2*/
   ('Pale Ale', 3, '5.3%', 2),/*3*/
   ('Hoppy Wheat', 8, '4.9%', 2),/*4*/
   ('Lela', 9, '4.5%', 3),/*5*/
   ('ABA', 7, '5.3%', 3),/*6*/
   ('Pale Ale', 2, '5.2%', 4),/*7*/
   ('Siesta Session', 1, '4.4%', 4),/*8*/
   ('C4', 1, '6.1%', 5),/*9*/
   ('Brale', 5, '4.9%', 5),/*10*/
   ('Throattwister', 11, '9.0%', 5),/*11*/
   ('Pilsner', 6, '4.5%', 6),/*12*/
   ('Stout', 4, '5.7%', 6);/*13*/

 insert into beer_sale (beer, sale_location) values
   /*BrewaryID1*/
   (1,1),
   (1,2),
   (1,3),
   (1,7),
   (1,8),
   (1,9),
   (1,19),
   (1,23),
   (1,24),
   (1,25),
   (1,32),
   (1,33),
   (1,34),
   (1,35),
   (2,1),
   (2,2),
   (2,3),
   (2,7),
   (2,8),
   (2,9),
   (2,19),
   (2,23),
   (2,24),
   (2,25),
   (2,32),
   (2,33),
   (2,34),
   (2,35),
   /*BrewaryID2*/
   (3,1),
   (3,2),
   (3,4),
   (3,5),
   (3,10),
   (3,11),
   (3,12),
   (3,13),
   (3,19),
   (3,23),
   (3,26),
   (3,27),
   (3,32),
   (3,36),
   (4,1),
   (4,2),
   (4,4),
   (4,5),
   (4,10),
   (4,11),
   (4,12),
   (4,13),
   (4,19),
   (4,23),
   (4,26),
   (4,27),
   (4,32),
   (4,36),
   /*BrewaryID3*/
   (5,2),
   (5,13),
   (6,2),
   (6,13),
   /*BrewaryID4*/
   (7,3),
   (7,6),
   (7,11),
   (7,12),
   (7,15),
   (7,16),
   (7,20),
   (7,21),
   (7,28),
   (7,29),
   (7,30),
   (7,36),
   (7,37),
   (8,3),
   (8,6),
   (8,11),
   (8,12),
   (8,15),
   (8,16),
   (8,20),
   (8,21),
   (8,28),
   (8,29),
   (8,30),
   (8,36),
   (8,37),
   /*BrewaryID5*/
   (9,4),
   (9,7),
   (9,8),
   (9,17),
   (9,18),
   (9,22),
   (9,31),
   (9,38),
   (9,39),
   (9,40),
   (10,4),
   (10,7),
   (10,8),
   (10,17),
   (10,18),
   (10,22),
   (10,31),
   (10,38),
   (10,39),
   (10,40),
   (11,4),
   (11,7),
   (11,8),
   (11,17),
   (11,18),
   (11,22),
   (11,31),
   (11,38),
   (11,39),
   (11,40);
