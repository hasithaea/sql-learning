create table bookshop (bsCode char(4), bsName varchar(25), contact char(11), address text(50));

describe bookshop;

// The data type is varchar(50) in address not text(50)

alter table bookshop modify address varchar(50);

describe bookshop;

insert into bookshop values ("BS01", "Sarasavi", "0112946058", "Colombo 04");
insert into bookshop values ("BS02", "Godage", NULL, "Main Street");
insert into bookshop values ("BS03", "Gunasena", "0912546893", NULL);
insert into bookshop values ("BS04", "Samudra", "0415670045", "Dharmapala Mawatha");

select * from bookshop;