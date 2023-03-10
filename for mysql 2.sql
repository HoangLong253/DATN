create table LoaiSach
(
	MaLoaiSach varchar(5),
	TenLoaiSach varchar(30),
	updated_at TIMESTAMP,

	constraint PK_LoaiSach primary key (MaLoaiSach)
);

create table NhaXuatBan
(
	MaNXB varchar(15),
	TenNXB varchar(25),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	constraint PK_NhaXuatBan primary key (MaNXB)
);

create table Sach
(
	MaSach varchar(20),
	MaNXB varchar(15),
	MaLoaiSach varchar(2),
	MaGiamGia varchar(10),
	TenSach varchar(50),
	MoTa varchar(255),
	HinhAnh varchar(255),
	DonGia int,
	TrangThai bit,
	NoiBat bit,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at datetime,

	constraint PK_Sach primary key (MaSach)
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
	updated_at datetime,
	deleted_at datetime,

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
	updated_at datetime,
	deleted_at datetime,

	constraint PK_NhanVien primary key (MaNV)
);

create table NgGiaoHang
(
	MaNgGiaoHang varchar(10),
	MaHDBan varchar(5),
	HoTen varchar(50), 
	Email varchar(30),
	SDT varchar(10),
	TrangThai bit,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at datetime,
	deleted_at datetime,

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
	MaHDBan varchar(5),
	MaSach varchar(10),
	Sluong int
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
	MaHDNhap varchar(5),
	MaSach varchar(10),
	Sluong int
);

create table Kho 
(
	MaKho varchar(5), 
	MaHDNhap varchar(5),
	MaSach varchar(10),
	Sluong int,
	create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table DS_Kho
(
	MaKho varchar(5),
	TenKho varchar(255),

	constraint PK_DS_Kho primary key (MaKho)
);

create table GiamGia
(
	MaGiamGia varchar(10) UNIQUE,
	PhanTramGiam float,
	create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	deleted_at datetime
);

create table DSGiamGia
(
	MaNgDung varchar(5),
	MaGiamGia varchar(10),
	create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	deleted_at datetime
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
	MaGioHang varchar(10),
	MaSach varchar(20),
	SL int,
	GiaTien int,
	Tong int,
	updated_at TIMESTAMP,
	deleted_at datetime
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

insert into 
NhanVien(MaNV, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at) 
values ('NV01', N'Nguy???n V??n A', 'NgVA@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

insert into 
NhanVien(MaNV, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at) 
values ('NV02', N'L???i Th??? B', 'LTB@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

insert into 
NhanVien(MaNV, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at) 
values ('NV03', N'Tr???n Kha C', 'TC@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

INSERT into
GioHang(MaGioHang, MaNgDung, TongTien, updated_at, deleted_at)
VALUES('GIOH01', 'ND01', 0, '', '');

insert into
NguoiDung(MaNgDung, MaGioHang, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at)
values ('ND01', 'GIOH01', N'Ho??ng C', 'NC@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

insert into
NgGiaoHang(MaNgGiaoHang, MaHDBan, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at)
values ('GIAOH01', 'HDB01', 'Tr???n Th??? D', 'T2D@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

INSERT into 
CTGioHang(MaGioHang, MaSach, SL, GiaTien, Tong, updated_at, deleted_at)
VALUES('GIOH01', 'nv61', 2, 6000, 0, '', '');

insert into
LoaiSach(MaLoaiSach, TenLoaiSach, updated_at)
values('GK', N'S??ch gi??o khoa', CURRENT_TIMESTAMP);

insert into
LoaiSach(MaLoaiSach, TenLoaiSach, updated_at)
values('TK', N'S??ch tham kh???o', CURRENT_TIMESTAMP);

insert into
LoaiSach(MaLoaiSach, TenLoaiSach, updated_at)
values('KHTN', N'S??ch khoa h???c t??? nhi??n', CURRENT_TIMESTAMP);

insert into
NhaXuatBan(MaNXB, TenNXB, created_at)
values('GD', N'Gi??o D???c', CURRENT_TIMESTAMP);

insert into
NhaXuatBan(MaNXB, TenNXB, created_at)
values('DN', N'???? N???ng', CURRENT_TIMESTAMP);

insert into
NhaXuatBan(MaNXB, TenNXB, created_at)
values('TN', N'Thanh ni??n', CURRENT_TIMESTAMP);

insert into
NhaXuatBan(MaNXB, TenNXB, created_at)
values('DHQGHN', N'?????i h???c Qu???c gia H?? N???i', CURRENT_TIMESTAMP);

insert into
NhaXuatBan(MaNXB, TenNXB, created_at)
values('THTPHCM', N'T???ng h???p th??nh ph??? H??? Ch?? Minh', CURRENT_TIMESTAMP);

INSERT INTO Sach VALUES('nv61','GD','GK',NULL,N'Ng??? v??n l???p 6 t???p 1',NULL,'nv61.jpg',6000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv62','GD','GK',NULL,N'Ng??? v??n 6 l???p t???p 2',NULL,'nv62.jpg',6000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv71','GD','GK',NULL,N'Ng??? v??n l???p 7 t???p 1',NULL,'nv71.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv72','GD','GK',NULL,N'Ng??? v??n l???p 7 t???p 2',NULL,'nv72.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv81','GD','GK',NULL,N'Ng??? v??n l???p 8 t???p 1',NULL,'nv81.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv82','GD','GK',NULL,N'Ng??? v??n l???p 8 t???p 2',NULL,'nv82.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv91','GD','GK',NULL,N'Ng??? v??n l???p 9 t???p 1',NULL,'nv91.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv92','GD','GK',NULL,N'Ng??? v??n l???p 9 t???p 2',NULL,'nv92.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv101','GD','GK',NULL,N'Ng??? v??n l???p 10 t???p 1',NULL,'nv101.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv102','GD','GK',NULL,N'Ng??? v??n l???p 10 t???p 2',NULL,'nv102.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv111','GD','GK',NULL,N'Ng??? v??n l???p 11 t???p 1',NULL,'nv111.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv112','GD','GK',NULL,N'Ng??? v??n l???p 11 t???p 2',NULL,'nv112.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv121','GD','GK',NULL,N'Ng??? v??n l???p 12 t???p 1',NULL,'nv121.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('nv122','GD','GK',NULL,N'Ng??? v??n l???p 12 t???p 2',NULL,'nv122.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t61','GD','GK',NULL,N'To??n l???p 6 t???p 1',NULL,'t61.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t62','GD','GK',NULL,N'To??n l???p 6 t???p 2',NULL,'t62.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t71','GD','GK',NULL,N'To??n l???p 7 t???p 1',NULL,'t71.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t72','GD','GK',NULL,N'To??n l???p 7 t???p 2',NULL,'t72.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t81','GD','GK',NULL,N'To??n l???p 8 t???p 1',NULL,'t81.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t82','GD','GK',NULL,N'To??n l???p 8 t???p 2',NULL,'t82.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t91','GD','GK',NULL,N'To??n l???p 9 t???p 1',NULL,'t91.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t92','GD','GK',NULL,N'To??n l???p 9 t???p 2',NULL,'t92.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t-ds10','GD','GK',NULL,N'To??n ?????i s??? l???p 10',NULL,'t-ds10.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t-ds11','GD','GK',NULL,N'To??n ?????i s??? l???p 11',NULL,'t-ds11.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t-ds12','GD','GK',NULL,N'To??n ?????i s??? l???p 12',NULL,'t-ds12.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t-hh10','GD','GK',NULL,N'To??n h??nh h???c l???p 10',NULL,'t-hh10.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t-hh11','GD','GK',NULL,N'To??n h??nh h???c l???p 11',NULL,'t-hh11.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('t-hh12','GD','GK',NULL,N'To??n h??nh h???c  l???p 12',NULL,'t-hh12.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ta6','GD','GK',NULL,N'Ti???ng anh l???p 6',NULL,'ta6.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ta7','GD','GK',NULL,N'Ti???ng anh l???p 7',NULL,'ta7.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ta8','GD','GK',NULL,N'Ti???ng anh l???p 8',NULL,'ta8.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ta9','GD','GK',NULL,N'Ti???ng anh l???p 9',NULL,'ta9.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ta10','GD','GK',NULL,N'Ti???ng anh l???p 10',NULL,'ta10.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ta11','GD','GK',NULL,N'Ti???ng anh l???p 11',NULL,'ta11.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ta12','GD','GK',NULL,N'Ti???ng anh l???p 12',NULL,'ta12.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('h8','GD','GK',NULL,N'Ho?? l???p 8',NULL,'h8.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('h9','GD','GK',NULL,N'Ho?? l???p 9',NULL,'h9.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('h10','GD','GK',NULL,N'Ho?? l???p 10',NULL,'h10.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('h11','GD','GK',NULL,N'Ho?? l???p 11',NULL,'h11.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('h12','GD','GK',NULL,N'Ho?? l???p 12',NULL,'h12.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('l6','GD','GK',NULL,N'V???t l?? l???p 6',NULL,'l6.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('l7','GD','GK',NULL,N'V???t l?? l???p 7',NULL,'l7.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('l8','GD','GK',NULL,N'V???t l?? l???p 8',NULL,'l8.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('l9','GD','GK',NULL,N'V???t l?? l???p 9',NULL,'l9.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('l10','GD','GK',NULL,N'V???t l?? l???p 10',NULL,'l10.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('l11','GD','GK',NULL,N'V???t l?? l???p 11',NULL,'l11.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('l12','GD','GK',NULL,N'V???t l?? l???p 12',NULL,'l12.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('cn6','GD','GK',NULL,N'C??ng ngh??? l???p 6',NULL,'cn6.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('cn7','GD','GK',NULL,N'C??ng ngh??? l???p 7',NULL,'cn7.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('cn8','GD','GK',NULL,N'C??ng ngh??? l???p 8',NULL,'cn8.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('cn9','GD','GK',NULL,N'C??ng ngh??? l???p 9',NULL,'cn9.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('cn10','GD','GK',NULL,N'C??ng ngh??? l???p 10',NULL,'cn10.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('cn11','GD','GK',NULL,N'C??ng ngh??? l???p 11',NULL,'cn11.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('cn12','GD','GK',NULL,N'C??ng ngh??? l???p 12',NULL,'cn12.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('dl6','GD','GK',NULL,N'?????a l?? l???p 6',NULL,'dl6.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('dl7','GD','GK',NULL,N'?????a l?? l???p 7',NULL,'dl7.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('dl8','GD','GK',NULL,N'?????a l?? l???p 8',NULL,'dl8.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('dl9','GD','GK',NULL,N'?????a l?? l???p 9',NULL,'dl9.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('dl10','GD','GK',NULL,N'?????a l?? l???p 10',NULL,'dl10.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('dl11','GD','GK',NULL,N'?????a l?? l???p 11',NULL,'dl11.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('dl12','GD','GK',NULL,N'?????a l?? l???p 12',NULL,'dl12.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ls6','GD','GK',NULL,N'L???ch s??? l???p 6',NULL,'ls6.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ls7','GD','GK',NULL,N'L???ch s??? l???p 7',NULL,'ls7.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ls8','GD','GK',NULL,N'L???ch s??? l???p 8',NULL,'ls8.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ls9','GD','GK',NULL,N'L???ch s??? l???p 9',NULL,'ls9.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ls10','GD','GK',NULL,N'L???ch s??? l???p 10',NULL,'ls10.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ls11','GD','GK',NULL,N'L???ch s??? l???p 11',NULL,'ls11.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ls12','GD','GK',NULL,N'L???ch s??? l???p 12',NULL,'ls12.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('s6','GD','GK',NULL,N'Sinh h???c l???p 6',NULL,'s6.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('s7','GD','GK',NULL,N'Sinh h???c l???p 7',NULL,'s7.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('s8','GD','GK',NULL,N'Sinh h???c l???p 8',NULL,'s8.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('s9','GD','GK',NULL,N'Sinh h???c l???p 9',NULL,'s9.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('s10','GD','GK',NULL,N'Sinh h???c l???p 10',NULL,'s10.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('s11','GD','GK',NULL,N'Sinh h???c l???p 11',NULL,'s11.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('s12','GD','GK',NULL,N'Sinh h???c l???p 12',NULL,'s12.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gdcd6','GD','GK',NULL,N'Gi??o d???c c??ng d??n l???p 6',NULL,'gdcd6.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gdcd7','GD','GK',NULL,N'Gi??o d???c c??ng d??n l???p 7',NULL,'gdcd7.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gdcd8','GD','GK',NULL,N'Gi??o d???c c??ng d??n l???p 8',NULL,'gdcd8.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gdcd9','GD','GK',NULL,N'Gi??o d???c c??ng d??n l???p 9',NULL,'gdcd9.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gdcd10','GD','GK',NULL,N'Gi??o d???c c??ng d??n l???p 10',NULL,'gdcd10.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gdcd11','GD','GK',NULL,N'Gi??o d???c c??ng d??n l???p 11',NULL,'gdcd11.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gdcd12','GD','GK',NULL,N'Gi??o d???c c??ng d??n l???p 12',NULL,'gdcd12.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gdqp10','GD','GK',NULL,N'Gi??o d???c qu???c ph??ng l???p 10',NULL,'gdqp10.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gdqp11','GD','GK',NULL,N'Gi??o d???c qu???c ph??ng l???p 11',NULL,'gdqp11.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gdqp12','GD','GK',NULL,N'Gi??o d???c qu???c ph??ng l???p 12',NULL,'gdqp12.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('an-v6','GD','GK',NULL,N'??m nh???c v?? M?? thu???t l???p 6',NULL,'an-v6.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('an-v7','GD','GK',NULL,N'??m nh???c v?? M?? thu???t l???p 7',NULL,'an-v7.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('an-v8','GD','GK',NULL,N'??m nh???c v?? M?? thu???t l???p 8',NULL,'an-v8.jpg',5000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('an-v9','GD','GK',NULL,N'??m nh???c v?? M?? thu???t l???p 9',NULL,'an-v9.jpg',5000,1,FALSE,'',NULL);

INSERT INTO Sach VALUES('kt-ta61','DHQGHN','TK',NULL,N'B??? ????? Ki???m Tra Ti???ng Anh L???p 6 T???p 1',NULL,'kt-ta61.jpg',69000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('kt-ta62','DHQGHN','TK',NULL,N'B??? ????? Ki???m Tra Ti???ng Anh L???p 6 T???p 2',NULL,'kt-ta62.jpg',69000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('kt-ta71','DHQGHN','TK',NULL,N'B??? ????? Ki???m Tra Ti???ng Anh L???p 7 T???p 1',NULL,'kt-ta71.jpg',75000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('kt-ta72','DHQGHN','TK',NULL,N'B??? ????? Ki???m Tra Ti???ng Anh L???p 7 T???p 2',NULL,'kt-ta72.jpg',75000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('kt-ta81','DHQGHN','TK',NULL,N'B??? ????? Ki???m Tra Ti???ng Anh L???p 8 T???p 1',NULL,'kt-ta81.jpg',75000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('kt-ta82','DHQGHN','TK',NULL,N'B??? ????? Ki???m Tra Ti???ng Anh L???p 8 T???p 2',NULL,'kt-ta82.jpg',75000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('kt-ta91','DHQGHN','TK',NULL,N'B??? ????? Ki???m Tra Ti???ng Anh L???p 9 T???p 1',NULL,'kt-ta91.jpg',85000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('kt-ta92','DHQGHN','TK',NULL,N'B??? ????? Ki???m Tra Ti???ng Anh L???p 9 T???p 2',NULL,'kt-ta92.jpg',85000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gd-ta10','DHQGHN','TK',NULL,N'Luy???n Gi???i B??? ????? B???i D?????ng H???c Sinh Gi???i Ti???ng Anh L???p 10',NULL,'gd-ta10.jpg',90000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gd-ta11','DHQGHN','TK',NULL,N'Luy???n Gi???i B??? ????? B???i D?????ng H???c Sinh Gi???i Ti???ng Anh L???p 11',NULL,'gd-ta11.jpg',90000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('gd-ta12','DHQGHN','TK',NULL,N'Luy???n Gi???i B??? ????? B???i D?????ng H???c Sinh Gi???i Ti???ng Anh L???p 12',NULL,'gd-ta12.jpg',90000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ktdgnl-t6','DHQGHN','TK',NULL,N'??n T???p Ki???m Tra ????nh Gi?? N??ng L???c M??n To??n L???p 6',NULL,'ktdgnl-t6.jpg',63000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('kt-t6','DN','TK',NULL,N'60 ????? Ki???m Tra To??n 6 (Theo Ch????ng Tr??nh Gi??o D???c Ph??? Th??ng M???i)',NULL,'kt-t6.jpg',65000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ppg-t71','DHQGHN','TK',NULL,N'H?????ng D???n H???c & Ph????ng Ph??p Gi???i To??n L???p 7 - T???p 1 (B??m S??t SGK Ch??n Tr???i S??ng T???o)',NULL,'ppg-t71.jpg',65000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ppg-t72','DHQGHN','TK',NULL,N'H?????ng D???n H???c & Ph????ng Ph??p Gi???i To??n L???p 7 - T???p 2 (B??m S??t SGK Ch??n Tr???i S??ng T???o)',NULL,'ppg-t72.jpg',65000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('kt-t7','DHQGHN','TK',NULL,N'B??? ????? Ki???m Tra To??n 7 (B??m S??t SGK Ch??n Tr???i S??ng T???o)',NULL,'kt-t7.jpg',55000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('100kt-t8','THTPHCM','TK',NULL,N'100 ????? Ki???m Tra To??n 8',NULL,'100kt-t8.jpg',80000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('kt-t8','DN','TK',NULL,N'????? Ki???m Tra ?????nh K?? To??n 8',NULL,'kt-t8.jpg',43000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('kt-t8-1','DHQGHN','TK',NULL,N'B??? ????? Ki???m tra To??n 8',NULL,'kt-t8-1.jpg',90000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('kttt-t9','TN','TK',NULL,N'B??? ????? Ki???m Tra M??n To??n 9 Theo H?????ng Th???c T???, T??ch H???p',NULL,'kttt-t9.jpg',100000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('dotcc-t9','DN','TK',NULL,N'B??? ????? ??n Thi M??n To??n 9 V??o L???p 10',NULL,'dotcc-t9.jpg',51000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('cp-ltl10-t9','DHQGHN','TK',NULL,N'Chinh Ph???c Luy???n Thi V??o L???p 10 M??n To??n Theo Ch??? ?????',NULL,'cp-ltl10-t9.jpg',135000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('std-lthsg-t9','THTPHCM','TK',NULL,N'Si??u T?? Duy Luy???n ????? Chu???n B??? K??? Thi HSG To??n L???p 9',NULL,'std-lthsg-t9.jpg',126000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('tk-t101','DHQGHN','TK',NULL,N'S??ch Tham Kh???o To??n 10 - Quy???n 1 (Bi??n So???n Theo Ch????ng Tr??nh GDPT M???i)',NULL,'tk-t101.jpg',90000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('tk-t102','DHQGHN','TK',NULL,N'S??ch Tham Kh???o To??n 10 - Quy???n 2 (Bi??n So???n Theo Ch????ng Tr??nh GDPT M???i)',NULL,'tk-t102.jpg',100000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('bd-th-t10','DHQGHN','TK',NULL,N'B???i D?????ng N??ng L???c T??? H???c To??n 10',NULL,'bd-th-t10.jpg',112000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ppg-hh10','DN','TK',NULL,N'Ph??n Lo???i V?? Ph????ng Ph??p Gi???i C??c D???ng To??n H??nh H???c 10 (C?? B???n & N??ng Cao)',NULL,'ppg-hh10.jpg',40000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ppg-ds11','DHQGHN','TK',NULL,N'Ph????ng Ph??p Gi???i C??c Chuy??n ????? C??n B???n ?????i S??? - Gi???i T??ch 11',NULL,'ppg-ds11.jpg',97000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ppg-hh11','DHQGHN','TK',NULL,N'Ph??n D???ng & Ph????ng ph??p Gi???i C??c D???ng B??i T???p Tr???c Nghi???m - H??nh H???c 11',NULL,'ppg-hh11.jpg',56000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('tn-t11','DHQGHN','TK',NULL,N'Tr???c Nghi???m Chuy??n ????? ?????i S??? - Gi???i T??ch & H??nh H???c 11',NULL,'tn-t11.jpg',106000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('vdu-nc-t11','DHQGHN','TK',NULL,N'15 Ch??? ????? V???n D???ng & N??ng Cao To??n Tr???c Nghi???m 11',NULL,'vdu-nc-t11.jpg',70000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('tn-cd-t12','DHQGHN','TK',NULL,N'Tr???c Nghi???m Chuy??n ????? Gi???i T??ch V?? H??nh H???c 12',NULL,'tn-cd-t12.jpg',200000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('50dmh-t12','TN','TK',NULL,N'50 ????? Minh H???a 2023 M??n To??n H???c',NULL,'50dmh-t12.jpg',180000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('ppg-ds12','DHQGHN','TK',NULL,N'Ph????ng Ph??p Gi???i To??n Chuy??n ????? Gi???i T??ch 12',NULL,'ppg-ds12.jpg',114000,1,FALSE,'',NULL);
INSERT INTO Sach VALUES('o-t12','DN','TK',NULL,N'T???ng ??n To??n H???c (T??i B???n 2023)',NULL,'o-t12.jpg',180000,1,FALSE,'',NULL);

insert into
HoaDonNhap(MaHDNhap, MaNV, TongTien, created_at)
values('HDN01', 'NV01', 60000, CURRENT_TIMESTAMP);

insert into
HoaDonBan(MaHDBan, MaNV, MaNgDung, MaNgGiaoHang, TongTien, created_at)
values('HDB01', 'NV03', 'ND01', 'GIAOH01',60000, CURRENT_TIMESTAMP);

insert into
HoaDonBan(MaHDBan, MaNV, MaNgDung, MaNgGiaoHang, TongTien, created_at)
values('HDB02', 'NV02', 'ND01', 'GIAOH01',0, CURRENT_TIMESTAMP);

insert into
CTHoaDonNhap(MaHDNhap, MaSach, Sluong)
values('HDN01', 'nv61', 10);

insert into
CTHoaDonBan(MaHDBan, MaSach, Sluong)
values('HDB01', 'nv61', 10);

insert into
CTHoaDonBan(MaHDBan, MaSach, Sluong)
values('HDB01', 'nv62', 5);

insert into
CTHoaDonBan(MaHDBan, MaSach, Sluong)
values('HDB02', 'nv71', 5);

insert into
CTHoaDonBan(MaHDBan, MaSach, Sluong)
values('HDB02', 'nv72', 5);

insert into
DS_Kho(MaKho, TenKho)
values('K01', 'Kho 1');

insert into
Kho(MaKho, MaHDNhap, MaSach, Sluong, create_at)
values('K01', 'HDN01', 'nv61', 1000, CURRENT_TIMESTAMP);