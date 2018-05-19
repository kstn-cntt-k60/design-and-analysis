drop schema if exists design;
create schema design;
use design;

create table Topic (
	topicID int primary key auto_increment,
    name varchar(128)
);

create table BookTitle (
	bookTitleID int primary key auto_increment,
    name varchar(128) not null,
    publishYear int,
    publisher varchar(128),
    author varchar(128),
    price int,
    topicID int not null,
    foreign key (topicID) references Topic(topicID)
);

create table Book (
	bookID int primary key auto_increment,
    bookTitleID int not null,
    allowBorrow bool not null,
    foreign key (bookTitleID) references BookTitle(bookTitleID)
);

create table Privilege (
	privilegeID int primary key auto_increment,
    name varchar(128)
);

create table `Account` (
	accountID int primary key,
    password char(40),
    privilegeID int not null,
    foreign key (privilegeID) references Privilege(privilegeID)
);

create table Bill (
	billID int primary key auto_increment,
    borrowedDate date not null,
	deposit int not null,
    accountID int not null, 
    foreign key (accountID) references `Account`(accountID)
);

create table Borrow (
	bookID int not null,
    billID int not null,
    foreign key (bookID) references Book(bookID),
    foreign key (billID) references Bill(billID)
);

insert into Privilege (`name`) values ('sinh viên');
insert into Privilege (`name`) values ('giáo vụ');
insert into Privilege (`name`) values ('thủ kho');
