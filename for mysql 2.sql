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
values ('NV01', N'Nguyễn Văn A', 'NgVA@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

insert into 
NhanVien(MaNV, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at) 
values ('NV02', N'Lại Thị B', 'LTB@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

insert into 
NhanVien(MaNV, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at) 
values ('NV03', N'Trần Kha C', 'TC@gmail.com', '0891234567', 1, CURRENT_TIMESTAMP, '', '');

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
VALUES('GIOH01', 'nv61', 2, 6000, 0, '', '');

insert into
LoaiSach(MaLoaiSach, TenLoaiSach, updated_at)
values('GK', N'Sách giáo khoa', CURRENT_TIMESTAMP);

insert into
LoaiSach(MaLoaiSach, TenLoaiSach, updated_at)
values('TK', N'Sách tham khảo', CURRENT_TIMESTAMP);

insert into
LoaiSach(MaLoaiSach, TenLoaiSach, updated_at)
values('KHTN', N'Sách khoa học tự nhiên', CURRENT_TIMESTAMP);

insert into
NhaXuatBan(MaNXB, TenNXB, created_at)
values('GD', N'Giáo Dục', CURRENT_TIMESTAMP);

insert into
NhaXuatBan(MaNXB, TenNXB, created_at)
values('DN', N'Đà Nẵng', CURRENT_TIMESTAMP);

insert into
NhaXuatBan(MaNXB, TenNXB, created_at)
values('TN', N'Thanh niên', CURRENT_TIMESTAMP);

insert into
NhaXuatBan(MaNXB, TenNXB, created_at)
values('DHQGHN', N'Đại học Quốc gia Hà Nội', CURRENT_TIMESTAMP);

insert into
NhaXuatBan(MaNXB, TenNXB, created_at)
values('THTPHCM', N'Tổng hợp thành phố Hồ Chí Minh', CURRENT_TIMESTAMP);

INSERT INTO Sach VALUES('nv61','GD','GK',NULL,N'Ngữ văn lớp 6 tập 1',NULL,'nv61.jpg',6000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv62','GD','GK',NULL,N'Ngữ văn 6 lớp tập 2',NULL,'nv62.jpg',6000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv71','GD','GK',NULL,N'Ngữ văn lớp 7 tập 1',NULL,'nv71.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv72','GD','GK',NULL,N'Ngữ văn lớp 7 tập 2',NULL,'nv72.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv81','GD','GK',NULL,N'Ngữ văn lớp 8 tập 1',NULL,'nv81.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv82','GD','GK',NULL,N'Ngữ văn lớp 8 tập 2',NULL,'nv82.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv91','GD','GK',NULL,N'Ngữ văn lớp 9 tập 1',NULL,'nv91.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv92','GD','GK',NULL,N'Ngữ văn lớp 9 tập 2',NULL,'nv92.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv101','GD','GK',NULL,N'Ngữ văn lớp 10 tập 1',NULL,'nv101.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv102','GD','GK',NULL,N'Ngữ văn lớp 10 tập 2',NULL,'nv102.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv111','GD','GK',NULL,N'Ngữ văn lớp 11 tập 1',NULL,'nv111.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv112','GD','GK',NULL,N'Ngữ văn lớp 11 tập 2',NULL,'nv112.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv121','GD','GK',NULL,N'Ngữ văn lớp 12 tập 1',NULL,'nv121.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('nv122','GD','GK',NULL,N'Ngữ văn lớp 12 tập 2',NULL,'nv122.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t61','GD','GK',NULL,N'Toán lớp 6 tập 1',NULL,'t61.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t62','GD','GK',NULL,N'Toán lớp 6 tập 2',NULL,'t62.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t71','GD','GK',NULL,N'Toán lớp 7 tập 1',NULL,'t71.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t72','GD','GK',NULL,N'Toán lớp 7 tập 2',NULL,'t72.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t81','GD','GK',NULL,N'Toán lớp 8 tập 1',NULL,'t81.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t82','GD','GK',NULL,N'Toán lớp 8 tập 2',NULL,'t82.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t91','GD','GK',NULL,N'Toán lớp 9 tập 1',NULL,'t91.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t92','GD','GK',NULL,N'Toán lớp 9 tập 2',NULL,'t92.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t-ds10','GD','GK',NULL,N'Toán đại số lớp 10',NULL,'t-ds10.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t-ds11','GD','GK',NULL,N'Toán đại số lớp 11',NULL,'t-ds11.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t-ds12','GD','GK',NULL,N'Toán đại số lớp 12',NULL,'t-ds12.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t-hh10','GD','GK',NULL,N'Toán hình học lớp 10',NULL,'t-hh10.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t-hh11','GD','GK',NULL,N'Toán hình học lớp 11',NULL,'t-hh11.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('t-hh12','GD','GK',NULL,N'Toán hình học  lớp 12',NULL,'t-hh12.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ta6','GD','GK',NULL,N'Tiếng anh lớp 6',NULL,'av6.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ta7','GD','GK',NULL,N'Tiếng anh lớp 7',NULL,'av7.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ta8','GD','GK',NULL,N'Tiếng anh lớp 8',NULL,'av8.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ta9','GD','GK',NULL,N'Tiếng anh lớp 9',NULL,'av9.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ta10','GD','GK',NULL,N'Tiếng anh lớp 10',NULL,'av10.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ta11','GD','GK',NULL,N'Tiếng anh lớp 11',NULL,'av11.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ta12','GD','GK',NULL,N'Tiếng anh lớp 12',NULL,'av12.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('h8','GD','GK',NULL,N'Hoá lớp 8',NULL,'h8.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('h9','GD','GK',NULL,N'Hoá lớp 9',NULL,'h9.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('h10','GD','GK',NULL,N'Hoá lớp 10',NULL,'h10.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('h11','GD','GK',NULL,N'Hoá lớp 11',NULL,'h11.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('h12','GD','GK',NULL,N'Hoá lớp 12',NULL,'h12.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('l6','GD','GK',NULL,N'Vật lí lớp 6',NULL,'l6.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('l7','GD','GK',NULL,N'Vật lí lớp 7',NULL,'l7.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('l8','GD','GK',NULL,N'Vật lí lớp 8',NULL,'l8.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('l9','GD','GK',NULL,N'Vật lí lớp 9',NULL,'l9.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('l10','GD','GK',NULL,N'Vật lí lớp 10',NULL,'l10.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('l11','GD','GK',NULL,N'Vật lí lớp 11',NULL,'l11.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('l12','GD','GK',NULL,N'Vật lí lớp 12',NULL,'l12.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('cn6','GD','GK',NULL,N'Công nghệ lớp 6',NULL,'cn6.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('cn7','GD','GK',NULL,N'Công nghệ lớp 7',NULL,'cn7.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('cn8','GD','GK',NULL,N'Công nghệ lớp 8',NULL,'cn8.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('cn9','GD','GK',NULL,N'Công nghệ lớp 9',NULL,'cn9.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('cn10','GD','GK',NULL,N'Công nghệ lớp 10',NULL,'cn10.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('cn11','GD','GK',NULL,N'Công nghệ lớp 11',NULL,'cn11.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('cn12','GD','GK',NULL,N'Công nghệ lớp 12',NULL,'cn12.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('dl6','GD','GK',NULL,N'Địa lí lớp 6',NULL,'dl6.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('dl7','GD','GK',NULL,N'Địa lí lớp 7',NULL,'dl7.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('dl8','GD','GK',NULL,N'Địa lí lớp 8',NULL,'dl8.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('dl9','GD','GK',NULL,N'Địa lí lớp 9',NULL,'dl9,jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('dl10','GD','GK',NULL,N'Địa lí lớp 10',NULL,'dl10.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('dl11','GD','GK',NULL,N'Địa lí lớp 11',NULL,'dl11.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('dl12','GD','GK',NULL,N'Địa lí lớp 12',NULL,'dl12.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ls6','GD','GK',NULL,N'Lịch sử lớp 6',NULL,'ls6.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ls7','GD','GK',NULL,N'Lịch sử lớp 7',NULL,'ls7.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ls8','GD','GK',NULL,N'Lịch sử lớp 8',NULL,'ls8.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ls9','GD','GK',NULL,N'Lịch sử lớp 9',NULL,'ls9.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ls10','GD','GK',NULL,N'Lịch sử lớp 10',NULL,'ls10.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ls11','GD','GK',NULL,N'Lịch sử lớp 11',NULL,'ls11.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ls12','GD','GK',NULL,N'Lịch sử lớp 12',NULL,'ls12.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('s6','GD','GK',NULL,N'Sinh học lớp 6',NULL,'s6.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('s7','GD','GK',NULL,N'Sinh học lớp 7',NULL,'s7.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('s8','GD','GK',NULL,N'Sinh học lớp 8',NULL,'s8.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('s9','GD','GK',NULL,N'Sinh học lớp 9',NULL,'s9.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('s10','GD','GK',NULL,N'Sinh học lớp 10',NULL,'s10.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('s11','GD','GK',NULL,N'Sinh học lớp 11',NULL,'s11.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('s12','GD','GK',NULL,N'Sinh học lớp 12',NULL,'s12.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gdcd6','GD','GK',NULL,N'Giáo dục công dân lớp 6',NULL,'gdcd6.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gdcd7','GD','GK',NULL,N'Giáo dục công dân lớp 7',NULL,'gdcd7.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gdcd8','GD','GK',NULL,N'Giáo dục công dân lớp 8',NULL,'gdcd8.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gdcd9','GD','GK',NULL,N'Giáo dục công dân lớp 9',NULL,'gdcd9.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gdcd10','GD','GK',NULL,N'Giáo dục công dân lớp 10',NULL,'gdcd10.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gdcd11','GD','GK',NULL,N'Giáo dục công dân lớp 11',NULL,'gdcd11.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gdcd12','GD','GK',NULL,N'Giáo dục công dân lớp 12',NULL,'gdcd12.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gdqp10','GD','GK',NULL,N'Giáo dục quốc phòng lớp 10',NULL,'gdqp10.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gdqp11','GD','GK',NULL,N'Giáo dục quốc phòng lớp 11',NULL,'gdqp11.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gdqp12','GD','GK',NULL,N'Giáo dục quốc phòng lớp 12',NULL,'gdqp12.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('an-v6','GD','GK',NULL,N'Âm nhạc và Mĩ thuật lớp 6',NULL,'an-v6.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('an-v7','GD','GK',NULL,N'Âm nhạc và Mĩ thuật lớp 7',NULL,'an-v7.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('an-v8','GD','GK',NULL,N'Âm nhạc và Mĩ thuật lớp 8',NULL,'an-v8.jpg',5000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('an-v9','GD','GK',NULL,N'Âm nhạc và Mĩ thuật lớp 9',NULL,'an-v9.jpg',5000,1,NULL,'',NULL);

INSERT INTO Sach VALUES('kt-ta61','DHQGHN','TK',NULL,N'Bộ Đề Kiểm Tra Tiếng Anh Lớp 6 Tập 1',NULL,'kt-ta61.jpg',69000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('kt-ta62','DHQGHN','TK',NULL,N'Bộ Đề Kiểm Tra Tiếng Anh Lớp 6 Tập 2',NULL,'kt-ta62.jpg',69000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('kt-ta71','DHQGHN','TK',NULL,N'Bộ Đề Kiểm Tra Tiếng Anh Lớp 7 Tập 1',NULL,'kt-ta71.jpg',75000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('kt-ta72','DHQGHN','TK',NULL,N'Bộ Đề Kiểm Tra Tiếng Anh Lớp 7 Tập 2',NULL,'kt-ta72.jpg',75000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('kt-ta81','DHQGHN','TK',NULL,N'Bộ Đề Kiểm Tra Tiếng Anh Lớp 8 Tập 1',NULL,'kt-ta81.jpg',75000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('kt-ta82','DHQGHN','TK',NULL,N'Bộ Đề Kiểm Tra Tiếng Anh Lớp 8 Tập 2',NULL,'kt-ta82.jpg',75000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('kt-ta91','DHQGHN','TK',NULL,N'Bộ Đề Kiểm Tra Tiếng Anh Lớp 9 Tập 1',NULL,'kt-ta91.jpg',85000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('kt-ta92','DHQGHN','TK',NULL,N'Bộ Đề Kiểm Tra Tiếng Anh Lớp 9 Tập 2',NULL,'kt-ta92.jpg',85000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gd-ta10','DHQGHN','TK',NULL,N'Luyện Giải Bộ Đề Bồi Dưỡng Học Sinh Giỏi Tiếng Anh Lớp 10',NULL,'gd-ta10.jpg',90000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gd-ta11','DHQGHN','TK',NULL,N'Luyện Giải Bộ Đề Bồi Dưỡng Học Sinh Giỏi Tiếng Anh Lớp 11',NULL,'gd-ta11.jpg',90000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('gd-ta12','DHQGHN','TK',NULL,N'Luyện Giải Bộ Đề Bồi Dưỡng Học Sinh Giỏi Tiếng Anh Lớp 12',NULL,'gd-ta12.jpg',90000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ktdgnl-t6','DHQGHN','TK',NULL,N'Ôn Tập Kiểm Tra Đánh Giá Năng Lực Môn Toán Lớp 6',NULL,'ktdgnl-t6.jpg',63000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('kt-t6','DN','TK',NULL,N'60 Đề Kiểm Tra Toán 6 (Theo Chương Trình Giáo Dục Phổ Thông Mới)',NULL,'kt-t6.jpg',65000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ppg-t71','DHQGHN','TK',NULL,N'Hướng Dẫn Học & Phương Pháp Giải Toán Lớp 7 - Tập 1 (Bám Sát SGK Chân Trời Sáng Tạo)',NULL,'ppg-t71.jpg',65000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ppg-t72','DHQGHN','TK',NULL,N'Hướng Dẫn Học & Phương Pháp Giải Toán Lớp 7 - Tập 2 (Bám Sát SGK Chân Trời Sáng Tạo)',NULL,'ppg-t72.jpg',65000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('kt-t7','DHQGHN','TK',NULL,N'Bộ Đề Kiểm Tra Toán 7 (Bám Sát SGK Chân Trời Sáng Tạo)',NULL,'kt-t7.jpg',55000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('100kt-t8','THTPHCM','TK',NULL,N'100 Đề Kiểm Tra Toán 8',NULL,'100kt-t8.jpg',80000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('kt-t8','DN','TK',NULL,N'Đề Kiểm Tra Định Kì Toán 8',NULL,'kt-t8.jpg',43000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('kt-t8-1','DHQGHN','TK',NULL,N'Bộ Đề Kiểm tra Toán 8',NULL,'kt-t8-1.jpg',90000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('kttt-t9','TN','TK',NULL,N'Bộ Đề Kiểm Tra Môn Toán 9 Theo Hướng Thực Tế, Tích Hợp',NULL,'kttt-t9.jpg',100000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('dotcc-t9','DN','TK',NULL,N'Bộ Đề Ôn Thi Môn Toán 9 Vào Lớp 10',NULL,'dotcc-t9.jpg',51000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('cp-ltl10-t9','DHQGHN','TK',NULL,N'Chinh Phục Luyện Thi Vào Lớp 10 Môn Toán Theo Chủ Đề',NULL,'cp-ltl10-t9.jpg',135000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('std-lthsg-t9','THTPHCM','TK',NULL,N'Siêu Tư Duy Luyện Đề Chuẩn Bị Kỳ Thi HSG Toán Lớp 9',NULL,'std-lthsg-t9.jpg',126000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('tk-t101','DHQGHN','TK',NULL,N'Sách Tham Khảo Toán 10 - Quyển 1 (Biên Soạn Theo Chương Trình GDPT Mới)',NULL,'tk-t101.jpg',90000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('tk-t102','DHQGHN','TK',NULL,N'Sách Tham Khảo Toán 10 - Quyển 2 (Biên Soạn Theo Chương Trình GDPT Mới)',NULL,'tk-t102.jpg',100000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('bd-th-t10','DHQGHN','TK',NULL,N'Bồi Dưỡng Năng Lực Tự Học Toán 10',NULL,'bd-th-t10.jpg',112000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ppg-hh10','DN','TK',NULL,N'Phân Loại Và Phương Pháp Giải Các Dạng Toán Hình Học 10 (Cơ Bản & Nâng Cao)',NULL,'ppg-hh10.jpg',40000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ppg-ds11','DHQGHN','TK',NULL,N'Phương Pháp Giải Các Chuyên Đề Căn Bản Đại Số - Giải Tích 11',NULL,'ppg-ds11.jpg',97000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ppg-hh11','DHQGHN','TK',NULL,N'Phân Dạng & Phương pháp Giải Các Dạng Bài Tập Trắc Nghiệm - Hình Học 11',NULL,'ppg-hh11.jpg',56000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('tn-t11','DHQGHN','TK',NULL,N'Trắc Nghiệm Chuyên Đề Đại Số - Giải Tích & Hình Học 11',NULL,'tn-t11.jpg',106000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('vdu-nc-t11','DHQGHN','TK',NULL,N'15 Chủ Đề Vận Dụng & Nâng Cao Toán Trắc Nghiệm 11',NULL,'vdu-nc-t11.jpg',70000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('tn-cd-t12','DHQGHN','TK',NULL,N'Trắc Nghiệm Chuyên Đề Giải Tích Và Hình Học 12',NULL,'tn-cd-t12.jpg',200000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('50dmh-t12','TN','TK',NULL,N'50 Đề Minh Họa 2023 Môn Toán Học',NULL,'50dmh-t12.jpg',180000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('ppg-ds12','DHQGHN','TK',NULL,N'Phương Pháp Giải Toán Chuyên Đề Giải Tích 12',NULL,'ppg-ds12.jpg',114000,1,NULL,'',NULL);
INSERT INTO Sach VALUES('o-t12','DN','TK',NULL,N'Tổng Ôn Toán Học (Tái Bản 2023)',NULL,'o-t12.jpg',180000,1,NULL,'',NULL);

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