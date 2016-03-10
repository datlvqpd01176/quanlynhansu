-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 01:02:27.239




-- tables
-- Table TNhanvien
CREATE TABLE TNhanvien (
    MaNV char(10)  NOT NULL,
    TenNV nvarchar(50)  NULL,
    Ngaysinh date  NULL,
    Gioitinh nvarchar(5)  NULL,
    Email nvarchar(50)  NULL,
    Mucluong money  NULL,
    MaPhong char(10)  NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (MaNV)
);

-- Table TPhongban
CREATE TABLE TPhongban (
    MaPhong char(10)  NOT NULL,
    Tenphong nvarchar(30)  NULL,
    TNhanvien_MaNV char(10)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY (MaPhong)
);





-- foreign keys
-- Reference:  TPhongban_TNhanvien (table: TPhongban)

ALTER TABLE TPhongban ADD CONSTRAINT TPhongban_TNhanvien FOREIGN KEY TPhongban_TNhanvien (MaPhong)
    REFERENCES TNhanvien (MaPhong);



-- End of file.

