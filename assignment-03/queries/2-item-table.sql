create table item ( itCode char(4), itName varchar(25), price decimal(9,2), imported tinyint(1), brand varchar(20) );

insert into item values("IT10", "Stapler", 240.00, 1, "Mango");
insert into item values("IT11", "Pen", 60.00, 0, "Atlas");
insert into item values("IT12", "Pencil", 40.00, 0, "Atlas");
insert into item values("IT13", "Eraser", 20.00, 0, NULL);
insert into item values("IT15", "Backpack", 4000.00, 0, "DSI");
insert into item values("IT16", "Notebook", 160.00, NULL, "Atlas");
insert into item values("IT17", "Folder", 20.00, 1, "Mango");
insert into item values("IT18", "Calculator", 2700.00, 1, "Casio");
insert into item values("IT19", "Highliter", 150.00, 0, NULL);
insert into item values("IT20", "Scissors", 100.00, 0, "Mango");
insert into item values("IT24", "Flash Drive", 1500.00, 1, "Kingston");

/* IT 24 is mistaken for IT14 */

update item set itCode = "IT14" where itCode = "IT24";

/* forgot to add primary key */

alter table item add primary key (itcode);