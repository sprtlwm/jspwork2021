USE test;

DESC mytable19student;

-- add column
ALTER TABLE mytable19student ADD COLUMN(
	height DOUBLE
    );
ALTER TABLE mytable19student ADD COLUMN(
	weught DOUBLE,
    foot DOUBLE
    );

-- add constraints

ALTER TABLE mytable19student DROP COLUMN 
	foot;
    