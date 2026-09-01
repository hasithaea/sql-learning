create table bookshop (bsCode char(4), bsName varchar(25), contact char(11), address text(50));

describe bookshop;

// The data type is varchar(50) in address not text(50)

alter table bookshop modify address varchar(50);

describe bookshop;