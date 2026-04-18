create database elearning; 
use elearning; 
 
 create table student(
 studentId int auto_increment primary key , 
 fullName varchar(100) not null, 
 DOB date not null, 
 email varchar(50) unique 
 ); 
 
 create table teacher (  
 teacherId int auto_increment primary key , 
 teacherName varchar(100) not null, 
 email varchar(50) unique 
 ); 
 
 create table course(
 courseId int auto_increment primary key, 
 courseName varchar(100) not null, 
 description varchar(50), 
 session int check (session >= 0)  default 0 , 
 teacherId int, 
 foreign key (teacherId) references teacher(teacherId) 
 ); 
 
 create table enrollment(
courseId int, 
studentId int, 
RegisDate date default (current_date) ,
foreign key (studentId) references student(studentId) , 
foreign key (courseId) references course(courseId),  
primary key (courseId, studentId) 
 ); 
 
 create  table score( 
 courseId int, 
 studentId int, 
 foreign key (studentId) references student(studentId) , 
foreign key (courseId) references course(courseId), 
midScore decimal(4,2) check (midScore between 0 and 10 )  , 
finalScore decimal(4,2) check (finalScore between 0 and 10 ), 
unique(courseId, StudentId) 
 ); 
 
 insert into student (fullName, DOB, email)
 values ('Linh Chi', '2007-01-28', 'linhchi@gmail.com' ), 
        ('Minh Đức', '2007-01-29', 'duc@gmail.com'); 
        
insert into teacher (teacherName, email)
values
     ('Lâm tùng Dương', 'duong@gmail.com'), 
     ('viruss', 'virussgmail.com') ; 
insert into course(courseName, description, session, teacherId) 
values 
     ('đánh đàn', 'học xong là đánh hay', 12, 1 ), 
     ('saxophone', 'đỉnh cao vãi chóa ', 20, 2); 
     
     
     

 
 
 
 
 
 
 
 
 
 
 
 
 