create database DATN
go

use DATN
go

create table LoaiSach
(
	MaLoaiSach varchar(2),
	TenLoaiSach nvarchar(30),
	updated_at datetime,

	constraint PK_LoaiSach primary key (MaLoaiSach),
)

go

create table Sach
(
	MaSach varchar(10),
	MaNXB varchar(2),
	MaLoaiSach varchar(2),
	MaGiamGia varchar(10),
	TenSach nvarchar(50),
	MoTa nvarchar(MAX),
	HinhAnh varchar(MAX),
	DonGia int,
	TrangThai bit,
	NoiBat bit,
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	updated_at datetime,

	constraint PK_Sach primary key (MaSach),
)

create table NhaXuatBan
(
	MaNXB varchar(2),
	TenNXB nvarchar(25),
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,

	constraint PK_NhaXuatBan primary key (MaNXB),
)

create table NguoiDung
(
	MaNgDung varchar(5),
	MaGioHang varchar(10),
	HoTen nvarchar(50), 
	Email varchar(30),
	SDT varchar(10),
	TrangThai bit,
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	updated_at datetime,
	deleted_at datetime,

	constraint PK_NguoiDung primary key (MaNgDung),
)

create table NhanVien
(
	MaNV varchar(5),
	HoTen nvarchar(50), 
	Email varchar(30),
	SDT varchar(10),
	TrangThai bit,
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	updated_at datetime,
	deleted_at datetime,

	constraint PK_NhanVien primary key (MaNV),
)

create table NgGiaoHang
(
	MaNgGiaoHang varchar(10),
	MaHDBan varchar(5),
	HoTen nvarchar(50), 
	Email varchar(30),
	SDT varchar(10),
	TrangThai bit,
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	updated_at datetime,
	deleted_at datetime,

	constraint PK_GiaoHang primary key (MaNgGiaoHang),
)

create table HoaDonBan
(
	MaHDBan varchar(5),
	MaNV varchar(5),
	MaNgDung varchar(5),
	MaNgGiaoHang varchar(10),
	TongTien int,
	TrangThaiGiaoHang int,
	TrangThaiThanhToan bit,
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,

	constraint PK_HoaDonBan primary key (MaHDBan),
)

create table CTHoaDonBan
(
	MaHDBan varchar(5),
	MaSach varchar(10),
	Sluong int,
	GiaTien int,
)

create table HoaDonNhap
(
	MaHDNhap varchar(5),
	MaNV varchar(5),
	TongTien int,
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,

	constraint PK_HoaDonNhap primary key (MaHDNhap),
)

create table CTHoaDonNhap
(
	MaHDNhap varchar(5),
	MaSach varchar(10),
	Sluong int,
	GiaTien int,
)

create table Kho 
(
	MaKho varchar(5),
	MaHDNhap varchar(5),
	MaSach varchar(10),
	Sluong int,
	create_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,

	constraint PK_Kho primary key (MaKho),
)

create table GiamGia
(
	MaGiamGia varchar(10) UNIQUE,
	PhanTramGiam float,
	create_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	deleted_at datetime,
)

/*create table GiamGia
(
	MaGiamGia varchar(10),
	PhanTramGiam float,
	create_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	deleted_at datetime,

	constraint PK_GiamGia primary key (MaGiamGia),
)*/

create table DSGiamGia
(
	MaNgDung varchar(5),
	MaGiamGia varchar(10),
	create_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	deleted_at datetime,
)

create table GioHang
(
	MaGioHang varchar(10),
	MaNgDung varchar(5),
	TongTien int,
	updated_at datetime,
	deleted_at datetime,

	constraint PK_GioHang primary key (MaGioHang),
)

create table CTGioHang
(
	MaGioHang varchar(10),
	MaSach varchar(10),
	SL int,
	GiaTien int,
	Tong int,
	updated_at datetime,
	deleted_at datetime,
)

/*create table DiaChi_NgDung
(
	MaNgDung varchar(5),
	Diachi varchar(45),
	TrangThai bit,
	create_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	updated_at datetime,
	deleted_at datetime,
)*/

go
--updated_at, deleted_at

--Khoá ngoại

--Sach
alter table Sach
add constraint FK_Sach_LoaiSach
foreign key (MaLoaiSach)
references LoaiSach(MaLoaiSach)

alter table Sach
add constraint FK_Sach_NhaXuatBan
foreign key (MaNXB)
references NhaXuatBan(MaNXB)

alter table Sach
add constraint FK_Sach_GiamGia
foreign key (MaGiamGia)
references GiamGia(MaGiamGia)

--CTHoaDonBan
alter table CTHoaDonBan
add constraint FK_CTHoaDonBan_HoaDonBan
foreign key (MaHDBan)
references HoaDonBan(MaHDBan)

alter table CTHoaDonBan
add constraint CTHoaDonBan_Sach
foreign key (MaSach)
references Sach(MaSach)

--CTHoaDonNhap
alter table CTHoaDonNhap
add constraint FK_CTHoaDonNhap_HoaDonNhap
foreign key (MaHDNhap)
references HoaDonNhap(MaHDNhap)

alter table CTHoaDonNhap
add constraint FK_CTHoaDonNhap_Sach
foreign key (MaSach)
references Sach(MaSach)

--Kho
alter table Kho
add constraint FK_Kho_Sach
foreign key (MaSach)
references Sach(MaSach)

alter table Kho
add constraint FK_Kho_HoaDonNhap
foreign key (MaHDNhap)
references HoaDonNhap(MaHDNhap)

--NgDung
alter table NguoiDung
add constraint FK_NguoiDung_GioHang
foreign key (MaGioHang)
references GioHang(MaGioHang)

--HoaDonNhap
alter table HoaDonNhap
add constraint HoaDonNhap_NhanVien
foreign key (MaNV)
references NhanVien(MaNV)

--HoaDonBan
alter table HoaDonBan
add constraint HoaDonBan_NhanVien
foreign key (MaNV)
references NhanVien(MaNV)

alter table HoaDonBan
add constraint FK_HoaDonBan_NgGiaoHang
foreign key (MaNgGiaoHang)
references NgGiaoHang(MaNgGiaoHang)

-- CTGioHang
alter table CTGioHang
add constraint FK_CTGioHang_GioHang
foreign key (MaGioHang)
references GioHang(MaGioHang)

--DSGiamGia
alter table DSGiamGia
add constraint FK_DSGiamGia_NgDung
foreign key (MaNgDung)
references NguoiDung(MaNgDung)

alter table DSGiamGia
add constraint FK_DSGiamGia_GiamGia
foreign key (MaGiamGia)
references GiamGia(MaGiamGia)

--insert into

--NhanVien
insert into 
NhanVien(MaNV, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at) 
values ('NV01', N'Nguyễn Văn A', 'NgVA@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

insert into 
NhanVien(MaNV, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at) 
values ('NV02', N'Lại Thị B', 'LTB@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

insert into 
NhanVien(MaNV, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at) 
values ('NV03', N'Trần Kha C', 'NgVA@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

--GioHang
INSERT into
GioHang(MaGioHang, MaNgDung, TongTien, updated_at, deleted_at)
VALUES('GIOH01', 'ND01', 0, '', '');

--NguoiDung
insert into
NguoiDung(MaNgDung, MaGioHang, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at)
values ('ND01', 'GIOH01', N'Hoàng C', 'NC@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

--NgGiaoHang
insert into
NgGiaoHang(MaNgGiaoHang, MaHDBan, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at)
values ('GIAOH01', 'HDB01', 'Trần Thị D', 'T2D@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

--CTGioHang
INSERT into 
CTGioHang(MaGioHang, MaSach, SL, GiaTien, Tong, updated_at, deleted_at)
VALUES('GIOH01', 'S0001', 2, 6000, 0, '', '');

--LoaiSach
insert into
LoaiSach(MaLoaiSach, TenLoaiSach, updated_at)
values('GK', N'Sách giáo khoa', '');

--NhaXuatBan
insert into
NhaXuatBan(MaNXB, TenNXB, created_at)
values('GD', N'Giáo Dục', CURRENT_TIMESTAMP);

--Sach
insert into
Sach(MaSach, MaNXB, MaLoaiSach, MaGiamGia, TenSach, MoTa, HinhAnh, DonGia, TrangThai, created_at, updated_at)
values ('S0001', 'GD', 'GK', null, N'Ngữ văn 6 tập 1', '', '', 6000, 1, CURRENT_TIMESTAMP, '');

--Kho

--HoaDonNhap
insert into
HoaDonNhap(MaHDNhap, MaNV, TongTien, created_at)
values('HDN01', 'NV01', 60000, CURRENT_TIMESTAMP);

--HoaDonBan
insert into
HoaDonBan(MaHDBan, MaNV, TongTien, created_at)
values('HDB01', 'NV03', 60000, CURRENT_TIMESTAMP);

--CTHoaDonNhap
insert into
CTHoaDonNhap(MaHDNhap, MaSach, Sluong, GiaTien)
values('HDN01', 'S0001', 10, 6000);

--CTHoaDonBan
insert into
CTHoaDonBan(MaHDBan, MaSach, Sluong, GiaTien)
values('HDB01', 'S0001', 10, 6000);

insert into
CTHoaDonBan(MaHDBan, MaSach, Sluong, GiaTien)
values('HDB01', 'S0001', 5, 6000);

--Kho
insert into
Kho(MaKho, MaHDNhap, MaSach, Sluong, create_at)
values('K01', 'HDN01', 'S0001', 1000, CURRENT_TIMESTAMP)


--------//--------

--join inner join

--------//--------

--select

SELECT *
FROM NhanVien

select HoTen, MaHDBan, TongTien
from NhanVien nv join HoaDonBan hdb on nv.MaNV = hdb.MaNV

go 

select hdb.MaHDBan, MaSach, cthdb.Sluong, cthdb.GiaTien, cthdb.GiaTien * cthdb.Sluong as TongTien
from HoaDonBan hdb join CTHoaDonBan cthdb on hdb.MaHDBan = cthdb.MaHDBan

select TenSach, TenNXB, DonGia, HinhAnh
from Sach S join NhaXuatBan N on S.MaNXB = N.MaNXB

select *
from NguoiDung

select *
from GioHang

select *
from Kho

--update

--------//---------

--delete table
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CTGioHang]') AND type in (N'U'))
DROP TABLE [dbo].[CTGioHang]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DSGiamGia]') AND type in (N'U'))
DROP TABLE [dbo].[DSGiamGia]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CTHoaDonBan]') AND type in (N'U'))
DROP TABLE [dbo].[CTHoaDonBan]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NguoiDung]') AND type in (N'U'))
DROP TABLE [dbo].[NguoiDung]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GioHang]') AND type in (N'U'))
DROP TABLE [dbo].[GioHang]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CTHoaDonNhap]') AND type in (N'U'))
DROP TABLE [dbo].[CTHoaDonNhap]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HoaDonBan]') AND type in (N'U'))
DROP TABLE [dbo].[HoaDonBan]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NgGiaoHang]') AND type in (N'U'))
DROP TABLE [dbo].[NgGiaoHang]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Kho]') AND type in (N'U'))
DROP TABLE [dbo].[Kho]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sach]') AND type in (N'U'))
DROP TABLE [dbo].[Sach]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhaXuatBan]') AND type in (N'U'))
DROP TABLE [dbo].[NhaXuatBan]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiSach]') AND type in (N'U'))
DROP TABLE [dbo].[LoaiSach]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HoaDonNhap]') AND type in (N'U'))
DROP TABLE [dbo].[HoaDonNhap]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[NhanVien]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GiamGia]') AND type in (N'U'))
DROP TABLE [dbo].[GiamGia]
GO