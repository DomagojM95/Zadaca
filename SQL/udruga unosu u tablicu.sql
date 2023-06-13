use master;

drop database if exists udruga;
go
create database udruga;
go
use udruga;

create table sticenik(
	sifra int not null primary key identity (1,1),
	ime varchar(50)not null,  
	osoba  int
);

create table osoba(
	sifra int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null, 
	
);

create table prostor(
	sifra int not null primary key identity (1,1),
	osoba int,
	sticenik int
);


alter table sticenik add foreign key (osoba) references osoba(sifra);
alter table prostor add foreign key (sticenik) references sticenik(sifra);

insert into osoba(ime,prezime)

values('pero','peric'),('marko','maric'),('ivo','ivic');

insert into sticenik(ime,osoba)
values ('cuko',1),('maca',2),('magarac',3);

insert into prostor(osoba,sticenik)
values(2,1),(3,2),(1,3);
