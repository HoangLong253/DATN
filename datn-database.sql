--tao database
create database DOANTN
--xai database
use DOANTN
--tạo các bảng
create table BOOKTYPES
(
	ID int,
	BOOKTYPENAME nvarchar(MAX),

	constraint PK_BOOKTYPES primary key (ID),
)

create table USERS
(
	ID int,
	PASSWORD varchar(MAX),
	FULLNAME nvarchar(50),
	PHONE char(10),
	DIST nvarchar(MAX),
	IsADMIN bit

	constraint PK_USERS primary key (ID),
)

create table BOOKS
(
	BOOKID varchar(9),
	BOOKTYPEID int,
	BOOKNAME nvarchar(MAX),
	AUTHNAME nvarchar(MAX),
	PUBNAME nvarchar(MAX),
	UNITPRICE int,
	QTY int,
	PIC nvarchar(MAX)

	constraint PK_BOOKS primary key (BOOKID),
)

create table PUBLISHERS
(
	ID int,
	PUBNAME nvarchar(MAX),

	constraint PK_PUBLISHERS primary key (ID),
)

create table AUTHORS
(
	ID int,
	FULLNAME nvarchar(MAX),

	constraint PK_AUTHORS primary key (ID),
)

create table BOOKS_GENRES
(
	BOOKID varchar(9),
	GENID int,

	constraint PK_BOOKS_GENRES primary key (BOOKID, GENID),
)

create table GENRES
(
	ID INT,
	NAME nvarchar(MAX),

	constraint PK_GENRES primary key (ID),
)

ALTER TABLE BOOKS
ADD CONSTRAINT  FK_BOOKS_BOOKTYPES
FOREIGN KEY (BOOKTYPEID)
REFERENCES BOOKTYPES(ID)