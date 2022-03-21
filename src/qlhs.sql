create database quanlyhocvien1;
use quanlyhocvien1;
create table class(
    id int not null primary key auto_increment,
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
create table point(
    id int primary key not null ,
    course_id int,
    student_id int,
    point float,
    check ( point between 0 and 100),
    foreign key (course_id) references course(id),
    foreign key (student_id) references student(student_id)
);
insert into class(id, name, language, description) VALUES (1,'1A','Viet Nam','khong co');
insert into class( name, language, description) VALUES ('1B','Viet Nam','khong co');
insert into class( name, language, description) VALUES ('1C','Viet Nam','khong co');
insert into class(name, language, description) VALUES ('1D','Viet Nam','khong co');
insert into class( name, language, description) VALUES ('1E','Viet Nam','khong co');
select * from class;
insert into address(id, address) VALUES (100,'HN');
insert into address(id, address) VALUES (101,'HN');
insert into address(id, address) VALUES (102,'HP');
insert into address(id, address) VALUES (103,'HN');
insert into address(id, address) VALUES (104,'DN');
select *from address;
insert into student(student_id, fullname, address_id, age, phone, class_id) VALUES (10,'Tran Van A',100,26,'123',1);
insert into student( fullname, address_id, age, phone, class_id) VALUES ('Nguyen Van A',103,18,'124',4);
insert into student( fullname, address_id, age, phone, class_id) VALUES ('Nguyen Van A',101,18,'125',1);
insert into student(fullname, address_id, age, phone, class_id) VALUES ('Nguyen Van A',100,23,'126',2);
insert into student( fullname, address_id, age, phone, class_id) VALUES ('Vu Van B',100,43,'127',3);
insert into student( fullname, address_id, age, phone, class_id) VALUES ('Nguyen Van A',102,16,'128',1);
insert into student( fullname, address_id, age, phone, class_id) VALUES ('Nguyen Van A',103,55,'129',2);
insert into student(fullname, address_id, age, phone, class_id) VALUES ('Nguyen Van B',100,44,'130',1);
insert into student( fullname, address_id, age, phone, class_id) VALUES ('Nguyen Van A',102,15,'131',4);
insert into student(fullname, address_id, age, phone, class_id) VALUES ('Vu Van A',104,16,'132',5);
select * from student;
insert into course(id, name, description) VALUES (1001,'Toan','khong co');
insert into course(id, name, description) VALUES (1002,'ly','khong co');
insert into course(id, name, description) VALUES (1003,'Hoa','khong co');
insert into course(id, name, description) VALUES (1004,'Sinh','khong co');
insert into course(id, name, description) VALUES (1005,'Su','khong co');
select * from course;
insert into point(id, course_id, student_id, point) VALUES (1,1001,10,85);
insert into point(id, course_id, student_id, point) VALUES (2,1001,11,65);
insert into point(id, course_id, student_id, point) VALUES (3,1002,12,75);
insert into point(id, course_id, student_id, point) VALUES (4,1002,13,80);
insert into point(id, course_id, student_id, point) VALUES (5,1002,14,25);
insert into point(id, course_id, student_id, point) VALUES (6,1003,15,80);
insert into point(id, course_id, student_id, point) VALUES (7,1003,16,55);
insert into point(id, course_id, student_id, point) VALUES (8,1004,17,95);
insert into point(id, course_id, student_id, point) VALUES (9,1005,18,90);
select * from point;
select * from student where fullname like 'Nguyen%';
select * from student where fullname like '%B';
select * from student where age between 15 and 18;
select * from student where student_id = 12 or student_id = 14;
select name, count(name) from class join student s on class.id = s.class_id group by name;
select address, count(address) from address join student s on address.id = s.address_id group by address;
select name, avg(point) from course join point p on course.id = p.course_id group by name;
