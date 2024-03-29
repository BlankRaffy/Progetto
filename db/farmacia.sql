DROP DATABASE IF EXISTS Farmacia;
create schema Farmacia;
 
 
  use Farmacia;
  create table Amministatore (
  Username varchar(18) not null ,
  Password varchar(18) not null,
  Nome varchar(18) not null,
  Cognome varchar(18) not null ,
  
  primary key (Username , Password));
  
  create table Utente (
  Nome varchar(18) not null,
  Cognome varchar(18) not null ,
  Telefono int (10),
  Username varchar(18) not null ,
  Password varchar(18) not null,
  Email varchar(50) not null ,
  IdCliente int not null AUTO_INCREMENT  unique ,
  
  primary key (IdCliente));
  
  create table  Ordinazione (
  IdOrdine int not null unique,
  date date ,
  IdCliente int auto_increment unique,

 Primary key (IdOrdine),
  foreign key (IdCliente) references Utente(IdCliente));
  
  create table Fattura (
  Importo double ,
  Iva double ,
  IdOrdine int auto_increment unique,

  
  foreign key (IdOrdine) references Ordinazione(IdOrdine));
  
  create table RigaOrdine(
  Prezzo double not null , 
  Quantita int  not null ,
  Iva double not null ,
  IdOrdine int unique,

  
  foreign key (IdOrdine) references Ordinazione(IdOrdine));
  
  create table Prodotto(
  Prezzo double not null  ,
  Iva double not null ,
  Nome varchar (16) not null ,
  PDisponibili int ,
  IdCodice int not null unique,

primary key (IdCodice));

  
create table Offerta (
Prezzo double not null,
DataInizio date ,
DataFine date ,
IdCodice int,


foreign key (IdCodice) references Prodotto(IdCodice));


create table News (
Titolo varchar (30) not null,
Autore varchar (16) not null,
Data date,
primary key(Titolo , Autore ));




