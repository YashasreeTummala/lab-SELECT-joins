
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
