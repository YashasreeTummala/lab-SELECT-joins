--CREATING TABLES TO EXPERIMENT JOINS

create table role7(Id NUMBER(20), name varchar2(255) NOT NULL,primary key(Id));

create table skill7(Id NUMBER(20)primary key, description varchar2(255) NULL, name varchar(255) NOT NULL);

create table post_type7(Id NUMBER(20)primary key,name varchar2(255) NOT NULL);

create table department7(Id NUMBER(20)primary key, name varchar2(255) NOT NULL);

create table degree7
(
  Id NUMBER(20)primary key,
  department_id NUMBER(20) NOT NULL,
  name varchar2(255) NOT NULL,
  FOREIGN KEY(department_id) REFERENCES department7(Id)
);

create table profile7
(
  Id NUMBER(20)primary key,
  address varchar2(255) NOT NULL,
  batch varchar2(255) NOT NULL,
  degree_id NUMBER(20) NOT NULL,
  designation varchar2(255) NULL,
  gender varchar2(255) NOT NULL,
  FOREIGN KEY(degree_id) REFERENCES degree7(Id)
);

create table higher_degree7
(
  Id NUMBER(20)primary key,
  degree_name varchar2(255) NULL,
  university_name varchar2(255) NULL,
  profile_id NUMBER(20) NOT NULL,
  FOREIGN KEY(profile_id) REFERENCES profile7(Id)
);

create table experience7
(
  Id NUMBER(20)primary key,
  company_name varchar2(255) NOT NULL,
  currentvalue NUMBER(2) NOT NULL,
  enddate DATE NULL,
  startdate DATE NOT NULL,
  profile_id NUMBER(20) NOT NULL,
  FOREIGN KEY(profile_id) REFERENCES profile7(Id)
);

create table project7
(
  Id NUMBER(20)primary key,
  name varchar(255) NOT NULL,
  number_of_members NUMBER(11) NOT NULL,
  profile_id NUMBER(20) NOT NULL,
  short_description varchar(255) NULL,
  FOREIGN KEY(profile_id) REFERENCES profile7(Id)
);

create table profile_skills7
(
  skill_id NUMBER(20),
  profile_id NUMBER(20),
  PRIMARY KEY(skill_id,profile_id)
);

create table user_new7
(
  Id NUMBER(20) primary key,
  emailid varchar2(255) NOT NULL,
  name varchar2(255) NOT NULL,
  password varchar2(255) NOT NULL,
  phonenumber varchar2(255) NOT NULL,
  profile_id NUMBER(20) NULL,
  role_id NUMBER(20) NOT NULL,
  username varchar2(255) NOT NULL,
  FOREIGN KEY(profile_id) REFERENCES profile7(Id),
  FOREIGN KEY(role_id) REFERENCES role7(Id)
);

CREATE table querytable7
(
  Id NUMBER(20) NOT NULL  Primary Key,
  content varchar2(255) NOT NULL,
  dateof DATE NOT NULL,
  parent_id NUMBER(20) NULL,
  user_id NUMBER(20)NOT NULL,
  FOREIGN KEY(parent_id) REFERENCES querytable7(Id),
  FOREIGN KEY(user_id) REFERENCES user_new7(Id)
);

create table event7
(
  Id NUMBER(20) primary key,
  dateof DATE NOT NULL,
  descriptionValue varchar2(255) NULL,
  invitation varchar2(255) NOT NULL,
  name varchar2(255) NOT NULL,
  organiser_id Number(20)NOT NULL,
  FOREIGN KEY(organiser_id) REFERENCES user_new7(Id)
);

create table post7
(
  Id NUMBER(20)primary key,
  content varchar2(255) NOT NULL,
  dateof DATE NOT NULL,
  type_id NUMBER(20) NOT NULL,
  user_id NUMBER(20)NOT NULL,
  FOREIGN KEY(type_id) REFERENCES post_type7(Id),
  FOREIGN KEY(user_id) REFERENCES user_new7(Id)
);


insert into role7(id,name)values(1,'designer');
insert into role7(id,name)values(2,'guide');
insert into role7(id,name)values(3,'programmer');
insert into role7(id,name)values(4,'manager');
insert into role7(id,name)values(5,'DTP');
insert into role7(id,name)values(6,'Alumni');
select * from role7;

insert into skill7(id,description,name)values(1,'self learning','learn');
insert into skill7(id,description,name)values(2,'technical skills','coding');
select * from skill7;

insert into post_type7(id,name)values(1,'business');
insert into post_type7(id,name)values(2,'business');
select * from post_type7;

insert into post7(id,content,dateof,type_id,user_id)values(1,'MY FIRST CONTENT', TO_DATE ('2020-03-03','YYYY-MM-DD'),1,2 );
insert into post7(id,content,dateof,type_id,user_id)values(2,'MY SECOND CONTENT', TO_DATE ('2020-01-01','YYYY-MM-DD'),2,1 );

insert into department7(id,name)values(1,'bpo');
insert into department7(id,name)values(2,'IT');
insert into department7(id,name)values(3,'TECH');
insert into department7(id,name)values(4,'cs');
select * from department7;

insert into degree7(id,department_id,name)values(1,1,'EEE');
insert into degree7(id,department_id,name)values(2,2,'ECE');
insert into degree7(id,department_id,name)values(3,3,'CIVIL');
insert into degree7(id,department_id,name)values(4,4,'MECH');
select * from degree7;

insert into profile7(id,address,batch,degree_id,designation,gender)values(1,'London','En',1,'HR','Male');
insert into profile7(id,address,batch,degree_id,designation,gender)values(2,'Chennai','For',2,'Manager','Female');
insert into profile7(id,address,batch,degree_id,designation,gender)values(3,'Pune','En',3,'Client','Male');
insert into profile7(id,address,batch,degree_id,designation,gender)values(4,'Mumbai','For',4,'Tester','Female');
select * from profile7;

insert into profile_skills7(skill_id, profile_id) values(1,1);
insert into profile_skills7(skill_id, profile_id) values(2,2);
insert into profile_skills7(skill_id, profile_id) values(1,3);
insert into profile_skills7(skill_id, profile_id) values(2,4);

insert into higher_degree7(id,degree_name,university_name,profile_id)values(1,'BE','MIT',1);
insert into higher_degree7(id,degree_name,university_name,profile_id)values(2,'BE','STANFORD',2);
select * from higher_degree7;

insert into experience7(id,company_name,currentvalue,enddate,startdate,profile_id)values(2,'CTS',1,TO_DATE('2008/11/11','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),2);
insert into experience7(id,company_name,currentvalue,enddate,startdate,profile_id)values(1,'INFOSYS',1,TO_DATE('2018/01/01','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),2);
insert into experience7(id,company_name,currentvalue,enddate,startdate,profile_id)values(3,'CGI',1,TO_DATE('2010/12/12','YYYY/MM/DD'),TO_DATE('2020/01/01','YYYY/MM/DD'),1);

select * from experience7;

insert into project7(id,name,number_of_members,profile_id,short_description)values(1,'Alumini management',10,1,'for school and college');
insert into project7(id,name,number_of_members,profile_id,short_description)values(2,'Library management',11,2,'for school and college');
select * from project7;

insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(1,'abcd@efgh.com','abcd','efgh',9884642005,1,1,'abcdefgh');
insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(2,'ijkl@mnop.com','ijkl','mnop',9845621745,2,2,'ijklmnop');
insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(3,'bcde@mnop.com','bcde','ghij',9845621746,2,3,'bcdefghi');
insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(4,'pavan@mnop.com','pavan','ganesh',9845621747,2,2,'pavanganesh');
insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(5,'abcd1@efgh.com','abcd1','efgh',9884642008,2,1,'bcdefgh');
insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(6,'ijkl1@mnop.com','ijkl1','mnop',9845621749,3,2,'zjklmnop');
insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(7,'bcde1@mnop.com','bcde1','ghij',9845621700,4,3,'pcdefghi');
insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(8,'yash@mnop.com','yash','sree',9845621705,1,2,'fYASH');
insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(9,'yash@mnop.com','yash','sree',9845621707,1,1,'GfYASH');
insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(10,'swara@mnop.com','swara','px',9845611111,1,6,'yash');
insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(11,'hari@mnop.com','hari','sree',9845622222,1,6,'sree');
insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(12,'sai@mnop.com','sai','chaitu',2222221745,2,2,'chaitu');
insert into user_new7(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(13,'sai@mnop.com','sai','chaitu',2222221745,2,6,'chaitu');

select * from user_new7;

insert into querytable7(id,content,dateof,parent_id,user_id)values(1,'Alumini management',TO_DATE('2008/11/11','YYYY/MM/DD'),1,1);
insert into querytable7(id,content,dateof,parent_id,user_id)values(2,'Library management',To_DATE('2008/11/19','YYYY/MM/DD'),2,2);
select * from querytable7;

insert into event7(id,dateof,descriptionValue,invitation,name,organiser_id)values(1,TO_DATE('2008/11/11','YYYY/MM/DD'),'Alumni meet','OBA','ProGrad',1);
insert into event7(id,dateof,descriptionValue,invitation,name,organiser_id)values(2,TO_DATE('2008/11/11','YYYY/MM/DD'),'Library opening','member','FACEPrep',2);
select * from event7;


--JOINS

--1 Write a query to return all the rows from user_new table and role tables where there is matching user_new.role_id value in both the usernew and role tables. 
--Display role.name and user_new.name in ascending order.

select * from user_new7 INNER JOIN role7 ON user_new7.role_id = role7.id
ORDER BY user_new7.name ASC, role7.name ASC;

--2 Write a query to return all rows from the user_new table and only those rows from the role table where the joined fields are equal. 
--Display role.name and user_new in ascending order.

select * from user_new7 LEFT JOIN role7 ON user_new7.role_id = role7.id
ORDER BY user_new7.name ASC, role7.name ASC;

--3 Write a query to return all names from the user_new table where there is matching user_new.role_id value in both the user_new and role tables.

select user_new7.name from user_new7 INNER JOIN role7
ON user_new7.role_id = role7.id;

--4 Write a query to return all user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name from user_new table where there is matching
--profile id in both user_new and profile table,
--profile.degree_id and degree.id from profile and degree table,
--degree.department_id and department.id in degree and department
--profile.id and experience.profile_id in experience and profile table
--where user_name.name = "ProGrad" and experience.currentValue=3

SELECT user_new7.phonenumber, user_new7.emailid, profile7.batch, department7.name, profile7.designation, experience7.company_name 
FROM user_new7 INNER JOIN profile7
ON user_new7.role_id = profile7.id
INNER JOIN degree7 
ON profile7.degree_id = degree7.id
INNER JOIN department7 
ON degree7.department_id = department7.id
INNER JOIN experience7 
ON profile7.id = experience7.profile_id
WHERE user_new7.emailid LIKE 'yash%'; 

--5 Write a query to return all user_new.name, skill.name from user_new table where there are matching ids in the tables in the 
--order with constraints given below
--role
--profile
--profile_skills
--where role.name="Alumini"
--Display by user_new.name and skill.name

Select user_new7.name , role7.name FROM 
user_new7 INNER JOIN role7 ON
user_new7.role_id = role7.id
INNER JOIN profile7 ON
user_new7.profile_id = profile7.id
INNER JOIN profile_skills7 ON
profile7.id = profile_skills7.skill_id
where role7.name LIKE 'guide';

--6 Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables
--role 
--profile
--experience
--where role.name = "Alumni"
--Display in the order user_name.name followed by experience.company_name

select user_new7.name, role7.name, experience7.company_name 
from User_new7 INNER JOIN role7 ON
user_new7.role_id = role7.id INNER JOIN profile7 ON
user_new7.id = profile7.id INNER JOIN experience7 ON 
experience7.profile_id = profile7.id
WHERE role7.name LIKE 'guide'
ORDER BY user_new7.name, experience7.company_name;

--7 Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables
--role
--profile
--experience
--where role.name = "Alumini"
--Display in the order user_name.name followed by experience.company_name

SELECT user_new7.name, experience7.company_name, role7.name
FROM user_new7 INNER JOIN role7 ON
user_new7.role_id = role7.id INNER JOIN profile7 ON
user_new7.id = profile7.id INNER JOIN experience7 ON 
experience7.profile_id = profile7.id
WHERE role7.name LIKE 'guide'
ORDER BY user_new7.name, experience7.company_name;;

--8 Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables
--role
--profile
--experience
--where role.name='Alumni' and experience.currentValue=1
--Display in the order of user_new.name;

SELECT user_new7.emailid FROM 
user_new7 INNER JOIN role7 ON 
user_new7.role_id = role7.id
INNER JOIN profile7 ON 
user_new7.profile_id = profile7.id
INNER JOIN experience7 ON
experience7.profile_id = profile7.id
WHERE role7.name LIKE 'Alumni' AND experience7.currentvalue=1
ORDER BY user_new7.name;


--9 Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables
--role
--profile
--experience
--where role.name='Alumni' and experience.currentValue=1 and profile.batch='2008'
--Display in the order of user_new.name;

SELECT user_new7.name, experience7.company_name FROM user_new7
INNER JOIN role7 ON  
user_new7.role_id = role7.id
INNER JOIN profile7 ON 
user_new7.profile_id = profile7.id
INNER JOIN experience7 ON
experience7.profile_id = profile7.id
WHERE role7.name LIKE 'Alumni' AND experience7.currentvalue=1 AND profile7.batch='For'
ORDER BY user_new7.name;

--10 Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
--role
--profile
--where role.name='Alumni' and user_new.profile_id is not null
--Display in the order of user_new.name;
--TRY WITHOUT WHERE CONDITION TO CHECK OUTPUT

Select user_new7.name, user_new7.emailid, user_new7.phonenumber, profile7.address FROM
user_new7 FULL JOIN role7 ON
user_new7.role_id = role7.id
FULL JOIN profile7 ON 
user_new7.profile_id = profile7.id
WHERE role7.name LIKE 'Alumni' AND user_new7.profile_id IS NOT NULL
ORDER BY user_new7.name;

--11 Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
--role
--profile
--where role.name='Alumni' and profile.batch='2008'
--Display in the order of user_new.name;

Select user_new7.name, user_new7.emailid, user_new7.phonenumber, profile7.address FROM
user_new7 INNER JOIN role7 ON
user_new7.role_id = role7.id
INNER JOIN profile7 ON 
user_new7.profile_id = profile7.id
WHERE role7.name LIKE 'Alumni' AND profile7.batch='En'
ORDER BY user_new7.name;


--12 Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
--role
--profile
--degree
--where role.name='Alumni' and degree.name='BSC_CT'
--Display in the order of user_new.name;

Select user_new7.name, user_new7.emailid, user_new7.phonenumber, profile7.address FROM
user_new7 INNER JOIN role7 ON
user_new7.role_id = role7.id
INNER JOIN profile7 ON 
user_new7.profile_id = profile7.id
INNER JOIN degree7 ON
profile7.degree_id = degree7.id
WHERE role7.name LIKE 'Alumni' AND degree7.name='ECE'
ORDER BY user_new7.name;

--13 Write a query to return alluser_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
--role
--profile
--degree
--department
--where role.name='Alumni' and department.name='CSE'
--Display in the order of user_new.name;

Select user_new7.name, user_new7.emailid, user_new7.phonenumber, profile7.address FROM
user_new7 INNER JOIN role7 ON
user_new7.role_id = role7.id
INNER JOIN profile7 ON 
user_new7.profile_id = profile7.id
INNER JOIN degree7 ON
profile7.degree_id = degree7.id
INNER JOIN department7 ON
degree7.department_id = department7.id
WHERE role7.name LIKE 'Alumni' AND department7.name='IT'
ORDER BY user_new7.name;

--14 Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables
--role
--profile
--higher_degree
--department
--where role.name='Alumni' and higher_degree.degree_name is not null
--Display in the order of user_new.name,higher_degree.university_name

Select user_new7.name AS USERNAME, user_new7.emailid AS USER_EMAIL, user_new7.phonenumber, profile7.address AS PROFILE_ADDRESS FROM
user_new7 FULL JOIN role7 ON
user_new7.role_id = role7.id
FULL JOIN profile7 ON 
user_new7.profile_id = profile7.id
FULL JOIN higher_degree7 ON
profile7.id = higher_degree7.id
WHERE role7.name LIKE 'Alumni' AND higher_degree7.degree_name IS NOT NULL
ORDER BY user_new7.name, higher_degree7.university_name;

--15 Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables
--role
--profile
--higher_degree
--department
--where role.name='Alumni' and higher_degree.degree_name is not null
--Display in the order of user_new.name,higher_degree.university_name

Select user_new7.name  AS USERNAME , higher_degree7.university_name AS HD FROM
user_new7 FULL JOIN role7 ON
user_new7.role_id = role7.id
FULL JOIN profile7 ON 
user_new7.profile_id = profile7.id
FULL JOIN higher_degree7 ON
profile7.id = higher_degree7.id
WHERE role7.name LIKE 'Alumni' AND higher_degree7.degree_name IS NOT NULL
ORDER BY user_new7.name, higher_degree7.university_name;

--16 Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
--role
--profile
--degree
--department
--higher_degree
--where role.name='Alumni' and higher_degree.university_name='Texas University'
--Display in the order of user_new.name;

Select user_new7.name  AS USERNAME, user_new7.emailid, user_new7.phonenumber, profile7.address FROM
user_new7 FULL JOIN role7 ON
user_new7.role_id = role7.id
FULL JOIN profile7 ON 
user_new7.profile_id = profile7.id
FULL JOIN degree7 ON
profile7.degree_id = degree7.id
FULL JOIN department7 ON
department7.id = degree7.department_id
FULL JOIN higher_degree7 ON
degree7.id = higher_degree7.id
WHERE role7.name LIKE 'designer' AND higher_degree7.degree_name = 'BE'
ORDER BY user_new7.name;

--17 Write a query to return all user_new.name, profile.batch from user_new where there are matching ids in the tables
--role
--profile
--where role.name='Alumni' and profile.gender='female'
--Display in the order of user_new.name;

SELECT user_new7.name, profile7.batch FROM user_new7
INNER JOIN role7 ON
user_new7.role_id = role7.id
INNER JOIN profile7 ON
user_new7.profile_id = profile7.id
WHERE role7.name = 'Alumni' AND profile7.gender = 'Female'
ORDER BY user_new7.name;

--18 Write a query to return all user_new.name, profile.batch, degree.name from user_new where there are matching ids in the tables
--role
--profile
--degree
--where role.name='Alumni' and profile.gender='female'
--Display in the order of user_new.name;

SELECT user_new7.name, profile7.batch, degree7.name FROM user_new7
INNER JOIN role7 ON
user_new7.role_id = role7.id
INNER JOIN profile7 ON
user_new7.profile_id = profile7.id
INNER JOIN degree7 ON
profile7.degree_id = degree7.id
WHERE role7.name = 'Alumni' AND profile7.gender = 'Female'
ORDER BY user_new7.name;

--19 Write a query to return all user_new.name, profile.batch, degree.name, department.name from user_new where there are matching ids in the tables
--role
--profile
--degree
--department
--where role.name='Alumni' and profile.gender='female'
--Display in the order of user_new.name;

SELECT user_new7.name, profile7.batch, degree7.name, department7.name FROM user_new7
INNER JOIN role7 ON
user_new7.role_id = role7.id
INNER JOIN profile7 ON
user_new7.profile_id = profile7.id
INNER JOIN degree7 ON
profile7.degree_id = degree7.id
INNER JOIN department7 ON
degree7.department_id = department7.id
WHERE role7.name = 'Alumni' AND profile7.gender = 'Female'
ORDER BY user_new7.name;

--20 Write a query to return all degree.name, department.name from degree where there are matching ids in the tables
--department
--Display in the order of degree.name;

SELECT degree7.name AS DEGREE_NAME, department7.name AS DEPT_NAME from degree7 
INNER JOIN department7 ON
degree7.department_id = department7.id
ORDER BY degree7.name;

--21 Write a query to return all user_new.name, profile.designation from user_new where there are matching ids in the tables
--role
--profile
--where role.name='Alumni' and profile.gender='male'
--Display in the order of user_new.name;

SELECT user_new7.name, profile7.designation FROM user_new7
INNER JOIN role7 ON
user_new7.role_id = role7.id
INNER JOIN profile7 ON
user_new7.profile_id = profile7.id
WHERE role7.name = 'Alumni' AND profile7.gender = 'Male'
ORDER BY user_new7.name;

--22 Write a query to return all user_new.name, profile.designation from user_new where there are matching ids in the tables
--role
--profile
--experience
--where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
--Display in the order of user_new.name;

SELECT user_new7.name, profile7.designation FROM user_new7
INNER JOIN role7 ON
user_new7.role_id = role7.id
INNER JOIN profile7 ON
user_new7.profile_id = profile7.id
INNER JOIN experience7 ON
experience7.profile_id = profile7.id
WHERE role7.name = 'Alumni' AND experience7.currentvalue=1 AND experience7.company_name = 'CTS'
ORDER BY user_new7.name;

--23 Write a query to return all user_new.name, querytable.content from user_new where there are matching ids in the tables
--querytable
--Display in the order of user_new.name;

SELECT user_new7.name, querytable7.content FROM user_new7
INNER JOIN querytable7 ON
user_new7.id = querytable7.user_id
ORDER BY user_new7.name;

--24 Write a query to return all user_new.name, querytable.content from user_new where there are matching ids in the tables
--querytable
--where parent_id is not null
--Display in the order of user_new.name;

SELECT user_new7.name, querytable7.content FROM user_new7
FULL JOIN querytable7 ON
user_new7.id = querytable7.user_id
WHERE querytable7.parent_id IS NOT NULL
ORDER BY user_new7.name;

--25 Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables
--post
--Display in the order of user_new.name;

SELECT user_new7.name, post7.content FROM user_new7
INNER JOIN post7 ON
user_new7.id = post7.user_id
ORDER BY user_new7.name;

--26 Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables
--post
--where post_type.name='Technology'
--Display in the order of user_new.name,post.dateof;

SELECT user_new7.name, post7.content FROM user_new7
INNER JOIN post7 ON
user_new7.id = post7.user_id
INNER JOIN post_type7 ON
post7.type_id = post_type7.id
WHERE post_type7.name = 'business'
ORDER BY user_new7.name, post7.dateof;

select * from user_new7;
select * from post7;
select * from post_type7;

--27 Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables
--post
--where post.dateof='2013'
--Display in the order of user_new.name, post.dateof, post.content;

select user_new7.name, post7.dateof, post7.content FROM user_new7
INNER JOIN post7 ON
user_new7.id = post7.user_id
WHERE post7.dateof LIKE '______20'
ORDER BY user_new7.name , post7.dateof, post7.content;

--28 Write a query to return all user_new.name, department.name from user_new where there are matching ids in the tables
--role
--profile
--degree
--department
--profile_skills
--skill
--where skill.name='Programming'
--Display in the order of user_new.name;

Select user_new7.name  AS USERNAME, department7.name FROM
user_new7 INNER JOIN role7 ON
user_new7.role_id = role7.id
INNER JOIN profile7 ON 
user_new7.profile_id = profile7.id
INNER JOIN degree7 ON
profile7.degree_id = degree7.id
INNER JOIN department7 ON
department7.id = degree7.department_id
INNER JOIN profile_skills7 ON
profile7.id = profile_skills7.skill_id
INNER JOIN skill7 ON
skill7.id = profile_skills7.skill_id
WHERE skill7.name = 'learn'
ORDER BY user_new7.name;

--29 Write a query to return all user_new.name, event.name from user_new where there are matching ids in the tables
--event
--where role.name='Alumni'
--Display in the order of user_new.name,event.dateof
--Display event in descending order.

SELECT user_new7.name, event7.name FROM user_new7
INNER JOIN event7 ON
user_new7.id = event7.organiser_id
INNER JOIN role7 ON
user_new7.role_id = role7.id
WHERE role7.name = 'guide'
ORDER BY user_new7.name, event7.dateof, event7.name DESC;

--30 Write a query to return all user_new.name, event.name from user_new where there are a matching ids in the tables
--event
--role
--where role.name='Alumni'
--Display in the order of user_new.name,event.dateof

SELECT user_new7.name, event7.name FROM user_new7
INNER JOIN event7 ON
user_new7.id = event7.organiser_id
INNER JOIN role7 ON
user_new7.role_id = role7.id
WHERE role7.name = 'guide'
ORDER BY user_new7.name, event7.dateof;


