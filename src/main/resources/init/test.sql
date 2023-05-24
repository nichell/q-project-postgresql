drop table if exists titanic;

create table titanic (
    PassengerId int,
    Pclass int,
    Name varchar(100)
);

COPY titanic
    FROM '/container/resources/titanic.csv'
    DELIMITER ','
    CSV HEADER;


