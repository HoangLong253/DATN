--tao database
create database DOANTN
--xai database
use database
--tạo các bảng
create table BOOKTYPES
(
	BOOKTYPEID int,
	BOOKTYPENAME nvarchar(MAX),

	constraint PK_BOOKTYPES primary key (BOOKTYPEID),
)

create table USERS
(
	USERID varchar(9),
	USERNAME varchar(MAX),
	PASSWORD varchar(MAX),
	FULLNAME nvarchar(50),
	PHONE char(10),
	DIST nvarchar(MAX),
	IsADMIN bit

	constraint PK_USERS primary key (USERID),
)

create table BOOKS
(
	BOOKID varchar(5),
	BOOKTYPEID int,
	BOOKNAME nvarchar(MAX),
	AUTHNAME nvarchar(MAX),
	PUBLISHER nvarchar(MAX),
	UNITPRICE int,
	QTY int,
	PIC nvarchar(MAX)

	constraint PK_BOOKS primary key (MASACH),
)

ALTER TABLE BOOKS
ADD CONSTRAINT  FK_BOOKS_BOOKTYPES
FOREIGN KEY (BOOKTYPEID)
REFERENCES BOOKTYPES(BOOKTYPEID)