create database DATN
go

use DATN
go

create table LoaiSach
(
	MaLoaiSach int,
	TenLoaiSach nvarchar(30),
	updated_at datetime,

	constraint PK_LoaiSach primary key (MaLoaiSach),
)

go

create table Sach
(
	MaSach varchar(10),
	MaNXB int,
	MaLoaiSach int,
	MaGiamGia varchar(5),
	TenSach nvarchar(50),
	MoTa nvarchar(MAX),
	HinhAnh varchar(MAX),
	DonGia int,
	TrangThai bit,
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	updated_at datetime,

	constraint PK_Sach primary key (MaSach),
)

create table NhaXuatBan
(
	MaNXB int,
	TenNXB nvarchar(25),
	/*created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,*/
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,

	constraint PK_NhaXuatBan primary key (MaNXB),
)

create table NguoiDung
(
	MaNgDung varchar(5),
	MaGHang varchar(10),
	MaGGia varchar(5),
	HoTen nvarchar(50), 
	Email varchar(30),
	SDT varchar(10),
	TrangThai bit,
	/*created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,*/
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	updated_at datetime,
	deleted_at datetime,

	constraint PK_NguoiDung primary key (MaNgDung),
)

create table NhanVien
(
	MaNV varchar(5),

	constraint PK_NhanVien primary key (MaNV),
)

create table NgGiaoHang
(
	MaNgGiaoHang varchar(5),
	MaHDBan int,

	constraint PK_GiaoHang primary key (MaNgGiaoHang),
)

create table HoaDonBan
(
	MaHDBan int,
	MaNV varchar(5),
	MaNgGHang varchar(5),
	TongTien int,
	TrangThaiGiaoHang int,
	TrangThaiThanhToan bit,
	/*created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,*/
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,

	constraint PK_HoaDonBan primary key (MaHDBan),
)

create table CTHoaDonBan
(
	MaHDBan int,
	MaSach varchar(10),
	Sluong int,
	GiaTien int,
)

create table HoaDonNhap
(
	MaHDNhap int,
	MaNV int,
	TongTien int,
	/*created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,*/
	created_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,

	constraint PK_HoaDonNhap primary key (MaHDNhap),
)

create table CTHoaDonNhap
(
	MaHDNhap int,
	MaSach varchar(10),
	Sluong int,
	GiaTien int,
)

create table Kho 
(
	MaKho varchar(5),
	MaHDNhap int,
	MaSach varchar(10),
	Sluong int,
	/*create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,*/
	create_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,

	constraint PK_Kho primary key (MaKho),
)

create table GiamGia
(
	MaGiamGia varchar(5),
	PhanTramGiam float,
	/*create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,*/
	create_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	deleted_at datetime,

	constraint PK_GiamGia primary key (MaGiamGia),
)

create table GioHang
(
	MaGioHang varchar(10),
	SL int, 
	TongTien int,
	updated_at datetime,
	deleted_at datetime,

	constraint PK_GioHang primary key (MaGioHang),
)

create table CTGioHang
(
	MaGioHang varchar(10),
	MaSach varchar(10),
	GiaTien int,
	updated_at datetime,
	deleted_at datetime,
)

create table DiaChi_NgDung
(
	MaNgDung varchar(5),
	Diachi varchar(45),
	TrangThai bit,
	/*create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,*/
	create_at DATETIME2 DEFAULT CURRENT_TIMESTAMP,
	updated_at datetime,
	deleted_at datetime,
)

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
add constraint FK_NguoiDung_GiamGia
foreign key (MaGiamGia)
references GiamGia(MaGiamGia)

alter table NguoiDung
add constraint NguoiDung_HoaDonBan
foreign key (MaHDBan)
references HoaDonBan(MaHDBan)

--HoaDonBan
alter table HoaDonBan
add constraint HoaDonBan_NhanVien
foreign key (MaNV)
references NhanVien(MaNV)

alter table HoaDonBan
add constraint HoaDonBan_NgGiaoHang
foreign key (MaNgGiaoHang)
references NgGiaoHang(MaNgGiaoHang)

