create database quanlyhocvien;
use quanlyhocvien;
create table class(
    id int not null primary key ,
    name varchar(255) not null ,
    language varchar(255) ,
    description varchar(255)
);
create table student(
    student_id int not null primary key auto_increment,
    fullname varchar(255) not null ,
    address_id int not null ,
    age int not null ,
    phone varchar(255) unique ,
    class_id int,
    foreign key (class_id) references class(id)
);
create table address(
    id int not null ,
    address varchar(255) not null
);
create table course(
    id int not null primary key ,
    name varchar(255) not null ,
    description varchar(255)
);
create table point1(
    id int ,
    course_id int,
    student_id int,
    point float,
    check ( point between 0 and 100),
    foreign key (course_id) references course(id),
    foreign key (student_id) references student(student_id)
);
insert into class(id, name, language, description) VALUES (01,'1A','Viet Nam','khong co');
insert into class(id, name, language, description) VALUES (02,'1B','Viet Nam','khong co');
insert into class(id, name, language, description) VALUES (03,'1C','Viet Nam','khong co');
insert into class(id, name, language, description) VALUES (04,'1D','Viet Nam','khong co');
insert into class(id, name, language, description) VALUES (05,'1E','Viet Nam','khong co');
select * from class;
insert into address(id, address) VALUES (100,'HN');
insert into address(id, address) VALUES (101,'HN');
insert into address(id, address) VALUES (102,'HP');
insert into address(id, address) VALUES (103,'HN');
insert into address(id, address) VALUES (104,'DN');
select *from address;
insert into student(student_id, fullname, address_id, age, phone, class_id) VALUES (10,'Tran Van A',100,26,'123',1);
insert into student(student_id, fullname, address_id, age, phone, class_id) VALUES (11,'Nguyen Van A',100,18,'124',1);
insert into student(student_id, fullname, address_id, age, phone, class_id) VALUES (12,'Nguyen Van A',100,18,'125',1);
insert into student(student_id, fullname, address_id, age, phone, class_id) VALUES (13,'Nguyen Van A',100,23,'126',1);
insert into student(student_id, fullname, address_id, age, phone, class_id) VALUES (14,'Vu Van B',100,43,'127',1);
insert into student(student_id, fullname, address_id, age, phone, class_id) VALUES (15,'Nguyen Van A',100,18,'128',1);
insert into student(student_id, fullname, address_id, age, phone, class_id) VALUES (16,'Nguyen Van A',100,55,'129',1);
insert into student(student_id, fullname, address_id, age, phone, class_id) VALUES (17,'Nguyen Van B',100,44,'130',1);
insert into student(student_id, fullname, address_id, age, phone, class_id) VALUES (18,'Nguyen Van A',100,18,'131',1);
insert into student(student_id, fullname, address_id, age, phone, class_id) VALUES (19,'Vu Van A',100,14,'132',1);
select * from student;
insert into course(id, name, description) VALUES (1001,'Toan','khong co');
insert into course(id, name, description) VALUES (1002,'ly','khong co');
insert into course(id, name, description) VALUES (1003,'Hoa','khong co');
insert into course(id, name, description) VALUES (1004,'Sinh','khong co');
insert into course(id, name, description) VALUES (1005,'Su','khong co');
select * from course;
select * from student where fullname like '%Nguyen%';
select * from student where fullname like '%B%';
select * from student where age between 15 and 18;
select * from student where student_id = 12 or student_id = 14;