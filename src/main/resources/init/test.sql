drop table if exists titanic;

create table titanic (
    PassengerId int,
    Pclass int,
    Name varchar(100),
    Sex varchar(10),
    Age float,
    SibSp int,
    Parch int,
    Ticket varchar(20),
    Fare float,
    Cabin varchar(20),
    Embarked varchar(1)
);

COPY titanic
    FROM '/container/ressources/titanic.csv'
    DELIMITER ','
    CSV HEADER;


