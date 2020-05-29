
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


