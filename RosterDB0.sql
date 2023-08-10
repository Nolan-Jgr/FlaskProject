create database legoRoster;
create table GAME(
	GameID int auto_increment,
    GameName varchar(16) not NULL,
    GameChar varchar(32) not NULL,
    primary key(GameID)
);
insert into GAME(GameName, GameChar) values ("LegoStarWars","SWCHAR");
insert into GAME(GameName, GameChar) values ("LegoDCVillans","DCCHAR");
insert into GAME(GameName, GameChar) values ("LegoMarvel","MRVLCHAR");

/*Star Wars Characters*/
create table SWCHAR(
	TypeID int auto_increment,
    GameID int not NULL,
	TypeName varchar(32) not NULL,
    primary key(TypeID),
    foreign key(GameID) references GAME(GameID)
);
insert into SWCHAR(GameID, TypeName) values (1, "HERO");
insert into SWCHAR(GameID, TypeName) values (1, "VILLIAN");
insert into SWCHAR(GameID, TypeName) values (1, "JEDI");
insert into SWCHAR(GameID, TypeName) values (1, "SITH");
insert into SWCHAR(GameID, TypeName) values (1, "ASTROMECH");
insert into SWCHAR(GameID, TypeName) values (1, "PROTOCOLDROID");
insert into SWCHAR(GameID, TypeName) values (1, "BOUNTYHUNTER");
insert into SWCHAR(GameID, TypeName) values (1, "SCOUNDREL");

create table HERO(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into HERO(TypeID, CharName, PhotoLoc) values (1, "Poe Dameron", "POE.jpg");
insert into HERO(TypeID, CharName, PhotoLoc) values (1, "Leia Organa", "LEIA.jpg");
insert into HERO(TypeID, CharName, PhotoLoc) values (1, "Clone Trooper", "CLONE.jpg");

create table VILLIAN(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into VILLIAN(TypeID, CharName, PhotoLoc) values (2, "General Grievous", "GRIEVOUS.jpg");
insert into VILLIAN(TypeID, CharName, PhotoLoc) values (2, "Captain Phasma", "PHASMA.jpg");
insert into VILLIAN(TypeID, CharName, PhotoLoc) values (2, "Storm Trooper", "STORM.jpg");

create table JEDI(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into JEDI(TypeID, CharName, PhotoLoc) values (3, "Luke Skywalker", "LUKE.jpg");
insert into JEDI(TypeID, CharName, PhotoLoc) values (3, "Obi-wan Kenobi", "KENOBI.jpg");
insert into JEDI(TypeID, CharName, PhotoLoc) values (3, "Yoda", "YODA.jpg");

create table SITH(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into SITH(TypeID, CharName, PhotoLoc) values (4, "Emperor Palpatine", "PALPATINE.jpg");
insert into SITH(TypeID, CharName, PhotoLoc) values (4, "Darth Vader", "VADER.jpg");
insert into SITH(TypeID, CharName, PhotoLoc) values (4, "Maul", "MAUL.jpg");

create table ASTROMECH(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into ASTROMECH(TypeID, CharName, PhotoLoc) values (5, "R2D2", "R2D2.jpg");
insert into ASTROMECH(TypeID, CharName, PhotoLoc) values (5, "BB-8", "BB8.jpg");
insert into ASTROMECH(TypeID, CharName, PhotoLoc) values (5, "R4P17", "R4P17.jpg");

create table PROTOCOLDROID(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into PROTOCOLDROID(TypeID, CharName, PhotoLoc) values (6, "C3PO", "C3PO.jpg");
insert into PROTOCOLDROID(TypeID, CharName, PhotoLoc) values (6, "H1NT", "H1NT.jpg");
insert into PROTOCOLDROID(TypeID, CharName, PhotoLoc) values (6, "ME8D9", "ME8D9.jpg");

create table BOUNTYHUNTER(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into BOUNTYHUNTER(TypeID, CharName, PhotoLoc) values (7, "Boba Fett", "BOBA.jpg");
insert into BOUNTYHUNTER(TypeID, CharName, PhotoLoc) values (7, "Bossk", "BOSSK.jpg");
insert into BOUNTYHUNTER(TypeID, CharName, PhotoLoc) values (7, "Greedo", "GREEDO.jpg");

create table SCOUNDREL(
	CharID int auto_increment,
    TypeID int not NULL,
    CharName varchar(32),
    PhotoLoc varchar(32),
    primary key(CharID),
    foreign key(TypeID) references SWCHAR(TypeID)
);
insert into SCOUNDREL(TypeID, CharName, PhotoLoc) values (8, "Han Solo", "HAN.jpg");
insert into SCOUNDREL(TypeID, CharName, PhotoLoc) values (8, "Chewbacca", "CHEWY.jpg");
insert into SCOUNDREL(TypeID, CharName, PhotoLoc) values (8, "Lando Calrissian", "LANDO.jpg");
/* End of Star Wars Characters */

