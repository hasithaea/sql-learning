create table distribute (itCode char(4), bsCode char(4), qty int, date date, primary key (itCode, bsCode));

insert into distribute values ("IT10", "BS01", 30, "2025-04-08");
insert into distribute values ("IT10", "BS03", 3, "2025-04-02");
insert into distribute values ("IT10", "BS04", 10, "2025-04-25");
insert into distribute values ("IT11", "BS01", 25, NULL);
insert into distribute values ("IT11", "BS02", 12, "2025-05-07");
insert into distribute values ("IT13", "BS04", 60, "2025-05-09");
insert into distribute values ("IT16", "BS02", 5, NULL);