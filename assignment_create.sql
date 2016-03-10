-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:54:39.974




-- tables
-- Table: TNhanVien
CREATE TABLE TNhanVien (
    MaNV varchar(15)  NOT NULL,
    TenNV nvarchar(max)  NOT NULL,
    Ngaysinh datetime  NOT NULL,
    GIoitinh nvarchar(%)  NOT NULL,
    Email nvarchar(max)  NOT NULL,
    Mucuong varchar(15)  NOT NULL,
    MaPhong varchar(15)  NOT NULL,
    CONSTRAINT TNhanVien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong varchar(15)  NOT NULL,
    Tenphong int  NOT NULL
)
;









-- foreign keys
-- Reference:  MaphongMaphong (table: TPhongban)

ALTER TABLE TPhongban ADD CONSTRAINT MaphongMaphong 
    FOREIGN KEY (MaPhong)
    REFERENCES TNhanVien (MaPhong)
;





-- End of file.

