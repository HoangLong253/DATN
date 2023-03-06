create table LoaiSach
(
	MaLoaiSach varchar(2),
	TenLoaiSach varchar(30),
	updated_at TIMESTAMP,

	constraint PK_LoaiSach primary key (MaLoaiSach)
);

create table Sach
(
	MaSach varchar(10),
	MaNXB varchar(2),
	MaLoaiSach varchar(2),
	MaGiamGia varchar(10),
	TenSach varchar(50),
	MoTa varchar(255),
	HinhAnh varchar(255),
	DonGia int,
	TrangThai bit,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	constraint PK_Sach primary key (MaSach)
);

create table NhaXuatBan
(
	MaNXB varchar(2),
	TenNXB varchar(25),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	constraint PK_NhaXuatBan primary key (MaNXB)
);

create table NguoiDung
(
	MaNgDung varchar(5),
	MaGioHang varchar(10),
	HoTen varchar(50), 
	Email varchar(30),
	SDT varchar(10),
	TrangThai bit,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	constraint PK_NguoiDung primary key (MaNgDung)
);

create table NhanVien
(
	MaNV varchar(5),
	HoTen varchar(50), 
	Email varchar(30),
	SDT varchar(10),
	TrangThai bit,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	constraint PK_NhanVien primary key (MaNV)
);

create table NgGiaoHang
(
	MaNgGiaoHang varchar(5),
	MaHDBan varchar(5),
	HoTen varchar(50), 
	Email varchar(30),
	SDT varchar(10),
	TrangThai bit,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	constraint PK_GiaoHang primary key (MaNgGiaoHang)
);

create table HoaDonBan
(
	MaHDBan varchar(5),
	MaNV varchar(5),
	MaNgDung varchar(5),
	MaNgGiaoHang varchar(10),
	TongTien int,
	TrangThaiGiaoHang int,
	TrangThaiThanhToan bit,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	constraint PK_HoaDonBan primary key (MaHDBan)
);

create table CTHoaDonBan
(
	MaCTHDB int NOT NULL AUTO_INCREMENT,
	MaHDBan varchar(5),
	MaSach varchar(10),
	Sluong int,
	GiaTien int,

	constraint PK_CTHoaDonBan primary key (MaCTHDB)
);

create table HoaDonNhap
(
	MaHDNhap varchar(5),
	MaNV varchar(5),
	TongTien int,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	constraint PK_HoaDonNhap primary key (MaHDNhap)
);

create table CTHoaDonNhap
(
	MaCTHDN int NOT NULL AUTO_INCREMENT,
	MaHDNhap varchar(5),
	MaSach varchar(10),
	Sluong int,
	GiaTien int,

	constraint PK_Kho primary key(MaCTHDN)
);

create table Kho 
(
	MaKho varchar(5),
	MaHDNhap varchar(5),
	MaSach varchar(10),
	Sluong int,
	create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	constraint PK_Kho primary key (MaKho)
);

create table GiamGia
(
	MaGiamGia varchar(10) UNIQUE,
	PhanTramGiam float,
	create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	deleted_at datetime,

	constraint PK_GiamGia primary key (MaGiamGia)
);

create table DSGiamGia
(
	MaDSGGia int NOT NULL AUTO_INCREMENT,
	MaNgDung varchar(5),
	MaGiamGia varchar(10),
	create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	deleted_at datetime,

	constraint PK_DSGiamGia primary key (MaDSGGia)
);

create table GioHang
(
	MaGioHang varchar(10),
	MaNgDung varchar(5),
	TongTien int,
	updated_at datetime,
	deleted_at datetime,

	constraint PK_GioHang primary key (MaGioHang)
);

create table CTGioHang
(
	MaCTGHang int NOT NULL AUTO_INCREMENT,
	MaGioHang varchar(10),
	MaSach varchar(10),
	SL int,
	GiaTien int,
	Tong int,
	updated_at TIMESTAMP,
	deleted_at datetime,

	constraint PK_CTGHang primary key (MaCTGHang)
);

alter table Sach
add constraint FK_Sach_LoaiSach
foreign key (MaLoaiSach)
references LoaiSach(MaLoaiSach);

alter table Sach
add constraint FK_Sach_NhaXuatBan
foreign key (MaNXB)
references NhaXuatBan(MaNXB);

alter table Sach
add constraint FK_Sach_GiamGia
foreign key (MaGiamGia)
references GiamGia(MaGiamGia);

alter table CTHoaDonBan
add constraint FK_CTHoaDonBan_HoaDonBan
foreign key (MaHDBan)
references HoaDonBan(MaHDBan);

alter table CTHoaDonBan
add constraint CTHoaDonBan_Sach
foreign key (MaSach)
references Sach(MaSach);

alter table CTHoaDonNhap
add constraint FK_CTHoaDonNhap_HoaDonNhap
foreign key (MaHDNhap)
references HoaDonNhap(MaHDNhap);

alter table CTHoaDonNhap
add constraint FK_CTHoaDonNhap_Sach
foreign key (MaSach)
references Sach(MaSach);

alter table Kho
add constraint FK_Kho_Sach
foreign key (MaSach)
references Sach(MaSach);

alter table Kho
add constraint FK_Kho_HoaDonNhap
foreign key (MaHDNhap)
references HoaDonNhap(MaHDNhap);

alter table NguoiDung
add constraint FK_NguoiDung_GioHang
foreign key (MaGioHang)
references GioHang(MaGioHang);

alter table HoaDonNhap
add constraint HoaDonNhap_NhanVien
foreign key (MaNV)
references NhanVien(MaNV);

alter table HoaDonBan
add constraint HoaDonBan_NhanVien
foreign key (MaNV)
references NhanVien(MaNV);

alter table HoaDonBan
add constraint FK_HoaDonBan_NgGiaoHang
foreign key (MaNgGiaoHang)
references NgGiaoHang(MaNgGiaoHang);

alter table CTGioHang
add constraint FK_CTGioHang_GioHang
foreign key (MaGioHang)
references GioHang(MaGioHang);

alter table DSGiamGia
add constraint FK_DSGiamGia_NgDung
foreign key (MaNgDung)
references NguoiDung(MaNgDung);

alter table DSGiamGia
add constraint FK_DSGiamGia_GiamGia
foreign key (MaGiamGia)
references GiamGia(MaGiamGia);

--insert into

insert into 
NhanVien(MaNV, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at) 
values ('NV01', N'Nguyễn Văn A', 'NgVA@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

insert into 
NhanVien(MaNV, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at) 
values ('NV02', N'Lại Thị B', 'LTB@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

insert into 
NhanVien(MaNV, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at) 
values ('NV03', N'Trần Kha C', 'NgVA@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

INSERT into
GioHang(MaGioHang, MaNgDung, TongTien, updated_at, deleted_at)
VALUES('GIOH01', 'ND01', 0, '', '');

insert into
NguoiDung(MaNgDung, MaGioHang, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at)
values ('ND01', 'GIOH01', N'Hoàng C', 'NC@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

insert into
NgGiaoHang(MaNgGiaoHang, MaHDBan, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at)
values ('GIAOH01', 'HDB01', 'Trần Thị D', 'T2D@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

INSERT into 
CTGioHang(MaGioHang, MaSach, SL, GiaTien, Tong, updated_at, deleted_at)
VALUES('GIOH01', 'S0001', 2, 6000, 0, '', '');

insert into
LoaiSach(MaLoaiSach, TenLoaiSach, updated_at)
values('GK', N'Sách giáo khoa', '');

insert into
NhaXuatBan(MaNXB, TenNXB, created_at)
values('GD', N'Giáo Dục', CURRENT_TIMESTAMP);

insert into
Sach(MaSach, MaNXB, MaLoaiSach, MaGiamGia, TenSach, MoTa, HinhAnh, DonGia, TrangThai, created_at, updated_at)
values ('S0001', 'GD', 'GK', null, N'Ngữ văn 6 tập 1', '', '', 6000, 1, CURRENT_TIMESTAMP, '');

insert into
HoaDonNhap(MaHDNhap, MaNV, TongTien, created_at)
values('HDN01', 'NV01', 60000, CURRENT_TIMESTAMP);

insert into
HoaDonBan(MaHDBan, MaNV, TongTien, created_at)
values('HDB01', 'NV03', 60000, CURRENT_TIMESTAMP);

insert into
CTHoaDonNhap(MaHDNhap, MaSach, Sluong, GiaTien)
values('HDN01', 'S0001', 10, 6000);

insert into
CTHoaDonBan(MaHDBan, MaSach, Sluong, GiaTien)
values('HDB01', 'S0001', 10, 6000);

insert into
CTHoaDonBan(MaHDBan, MaSach, Sluong, GiaTien)
values('HDB02', 'S0001', 1, 6000);

insert into
CTHoaDonBan(MaHDBan, MaSach, Sluong, GiaTien)
values('HDB01', 'S0001', 5, 6000);

insert into
Kho(MaKho, MaHDNhap, MaSach, Sluong, create_at)
values('K01', 'HDN01', 'S0001', 1000, CURRENT_TIMESTAMP)

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