use etlhive;
select * from titanic;
/* . Select all columns for all passengers in the 
Titanic dataset.  */
select * from titanic;
/* Display the number of passengers in each class 
(1st, 2nd, 3rd).*/
select pclass ,count(*)  from titanic group by pclass;

/*  Find the number of male and female 
passengers.  */
select sex , count(*)  from titanic group by sex;

/*  Display the names of passengers who survived.*/
select name,survived from titanic where survived='Survived';

/* . Find the average age of passengers.*/
select avg(age) from titanic;

/*  List the names and ages of passengers who 
were younger than 18. */

select name,age from titanic where age < 18 ;

/* Display the number of passengers in each 
embarkation port (C, Q, S).  */
select embarked ,count(*) from titanic group by embarked;

/* Find the highest fare paid by any passenger. */
select name, fare from titanic order by fare desc limit 1;

/*  List the average age of passengers for each 
class. */
select avg(age) ,pclass from titanic group by pclass;

/* Display the passenger names and ages for 
those who survived and were in 1st class. */
select name,age,Survived from titanic where Pclass=1 and Survived='Survived';

/*  Find the number of passengers who paid more 
than 50 for their ticket.*/
select count(*) PassengerId  from titanic where ticket > 50;

/* List the names of passengers who did not 
survive and were in 3rd class*/
select name,survived,pclass from titanic where pclass=3 and Survived='died';

/*  Find the number of passengers with missing 
values in the "Age" column. */
select count(*) age from titanic where age is null;

/*  Display the passenger names and ages for 
those who embarked at port 'S' and survived.*/
select name,age,Embarked,survived from titanic where embarked='s' and Survived='survived';

/*  Calculate the total number of passengers on 
board.  */
select count(*) passengerid from titanic;

/*  List the average fare for each class. */
select avg(fare),pclass from titanic group by pclass;

/* Display the passenger names and ages for 
those with a known age and a fare greater than 
100.  */
select name,age,fare from titanic where fare > 100 and age is not null;

/*  Find the percentage of passengers who 
survived.  */
select (((select count(1) from titanic where survived='Survived') /
(select count(1) from titanic )) * 100) as percentage from dual;

/* . List the names of passengers who were in 2nd 
class and had a fare less than 20. */
select name ,fare from titanic where pclass=2 and fare <20 ;

/*Display the passenger names and ages for 
those who did not survive and were in 1st class.  */
select name,age,pclass,survived from titanic where pclass=1 and Survived='died';

/* Find the number of passengers for each 
combination of class and gender.  */
select pclass,sex,count(*) from titanic group by pclass,sex;

/*. List the names of passengers who survived 
and were in 3rd class with an age less than 20.*/
select name,survived ,pclass,age from titanic where pclass=3 and age <20 and Survived='Survived';

/* Display the passenger names for those with 
the name starting with 'Mr.' */
select name from titanic where name like 'MR.%';

/*  Find the average age of male and female 
passengers. */
select avg(age) ,sex from titanic group by sex;

/* . List the names of passengers who paid the 
highest fare.  */
select name from titanic order  by fare desc limit 5;

/*  Find the number of passengers for each 
embarkation port and class. */
select embarked as embarkation_port,pclass as class ,count(*) as number_of_passenger 
from titanic group by embarked,pclass;

/*Display the passenger names and ages for 
those who survived and paid more than 200 for 
their ticket.*/
select name,age,survived,ticket from titanic where ticket > 200 and survived='survived' ;

/*  Find the average age of passengers who 
survived and those who did not. */
select avg(age),survived from titanic group by survived;

/*  List the names of passengers who were in 1st 
class and had an age greater than 50. */
select name,age,pclass from titanic where age >50 and pclass=1;

/* Display the passenger names for those with 
the name ending with 'sson'.*/
select name from titanic where name like '%sson';
