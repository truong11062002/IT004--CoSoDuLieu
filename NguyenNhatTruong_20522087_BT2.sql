-- PHẦN 1 --
USE QuanLyBanHang
SET DATEFORMAT DMY

-- Nhập dữ liệu cho KHACHHANG
INSERT INTO KHACHHANG VALUES('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM', '08823451','22/10/1960',13060000,'22/07/2006',NULL)
INSERT INTO KHACHHANG VALUES('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','0908256478','03/04/1974',280000,'30/07/2006',NULL)
INSERT INTO KHACHHANG VALUES('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','0938776266','12/06/1980',3860000,'08/05/2006',NULL)
INSERT INTO KHACHHANG VALUES('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','0917325476','09/03/1965',250000,'10/02/2006',NULL)
INSERT INTO KHACHHANG VALUES('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','08246108','10/03/1950',21000,'28/10/2006',NULL)
INSERT INTO KHACHHANG VALUES('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','08631738','31/12/1981',915000,'24/11/2006',NULL)
INSERT INTO KHACHHANG VALUES('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','0916783565','06/04/1971',12500,'12/01/2006',NULL)
INSERT INTO KHACHHANG VALUES('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','0938435756','10/01/1971',365000,'13/12/2006',NULL)
INSERT INTO KHACHHANG VALUES('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','08654763','03/09/1979',70000,'14/01/2007',NULL)
INSERT INTO KHACHHANG VALUES('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','08768904','02/05/1983',67500,'16/01/2007',NULL)

select *from KHACHHANG
-- Nhập dữ liệu cho NHANVIEN
INSERT INTO NHANVIEN VALUES('NV01','Nguyen Nhu Nhut','0927345678','13/04/2006')
INSERT INTO NHANVIEN VALUES('NV02','Le Thi Phi Yen','0987567390','21/04/2006')
INSERT INTO NHANVIEN VALUES('NV03','Nguyen Van B','0997047382','27/04/2006')
INSERT INTO NHANVIEN VALUES('NV04','Ngo Thanh Tuan','0913758498','24/06/2006')
INSERT INTO NHANVIEN VALUES('NV05','Nguyen Thi Truc Thanh','0918590387','20/07/2006')
select *from NHANVIEN

-- Nhập dữ liệu cho SANPHAM
INSERT INTO SANPHAM VALUES('BC01','But chi','cay','Singapore',3000)
INSERT INTO SANPHAM VALUES('BC02','But chi','cay','Singapore',5000)
INSERT INTO SANPHAM VALUES('BC03','But chi','cay','Viet Nam',3500)
INSERT INTO SANPHAM VALUES('BC04','But chi','hop','Viet Nam',30000)
INSERT INTO SANPHAM VALUES('BB01','But bi','cay','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('BB02','But bi','cay','Trung Quoc',7000)
INSERT INTO SANPHAM VALUES('BB03','But bi','hop','Thai Lan',100000)
INSERT INTO SANPHAM VALUES('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500)
INSERT INTO SANPHAM VALUES('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500)
INSERT INTO SANPHAM VALUES('TV03','Tap 100 giay tot','quyen','Viet Nam',3000)
INSERT INTO SANPHAM VALUES('TV04','Tap 200 giay tot','quyen','Viet Nam',5500)
INSERT INTO SANPHAM VALUES('TV05','Tap 100 trang','chuc','Viet Nam',23000)
INSERT INTO SANPHAM VALUES('TV06','Tap 200 trang','chuc','Viet Nam',53000)
INSERT INTO SANPHAM VALUES('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
INSERT INTO SANPHAM VALUES('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
INSERT INTO SANPHAM VALUES('ST02','So tay loai 1','quyen','Viet Nam',55000)
INSERT INTO SANPHAM VALUES('ST03','So tay loai 2','quyen','Viet Nam',51000)
INSERT INTO SANPHAM VALUES('ST04','So tay','quyen','Thai Lan',55000)
INSERT INTO SANPHAM VALUES('ST05','So tay mong','quyen','Thai Lan',20000)
INSERT INTO SANPHAM VALUES('ST06','Phan viet bang','hop','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('ST07','Phan khong bui','hop','Viet Nam',7000)
INSERT INTO SANPHAM VALUES('ST08','Bong bang','cai','Viet Nam',1000)
INSERT INTO SANPHAM VALUES('ST09','But long','cay','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('ST10','But long','cay','Trung Quoc',7000)

SELECT *FROM SANPHAM
-- Nhập dữ liệu cho HOADON
INSERT INTO HOADON VALUES(1001,'23/07/2006','KH01','NV01',320000)
INSERT INTO HOADON VALUES(1002,'12/08/2006','KH01','NV02',840000)
INSERT INTO HOADON VALUES(1003,'23/08/2006','KH02','NV01',100000)
INSERT INTO HOADON VALUES(1004,'01/09/2006','KH02','NV01',180000)
INSERT INTO HOADON VALUES(1005,'20/10/2006','KH01','NV02',3800000)
INSERT INTO HOADON VALUES(1006,'16/10/2006','KH01','NV03',2430000)
INSERT INTO HOADON VALUES(1007,'28/10/2006','KH03','NV03',510000)
INSERT INTO HOADON VALUES(1008,'28/10/2006','KH01','NV03',440000)
INSERT INTO HOADON VALUES(1009,'28/10/2006','KH03','NV04',200000)
INSERT INTO HOADON VALUES(1010,'01/11/2006','KH01','NV01',5200000)
INSERT INTO HOADON VALUES(1011,'04/11/2006','KH04','NV03',250000)
INSERT INTO HOADON VALUES(1012,'30/11/2006','KH05','NV03',21000)
INSERT INTO HOADON VALUES(1013,'12/12/2006','KH06','NV01',5000)
INSERT INTO HOADON VALUES(1014,'31/12/2006','KH03','NV02',3150000)
INSERT INTO HOADON VALUES(1015,'01/01/2007','KH06','NV01',910000)
INSERT INTO HOADON VALUES(1016,'01/01/2007','KH07','NV02',12500)
INSERT INTO HOADON VALUES(1017,'02/01/2007','KH08','NV03',35000)
INSERT INTO HOADON VALUES(1018,'13/01/2007','KH08','NV03',330000)
INSERT INTO HOADON VALUES(1019,'13/01/2007','KH01','NV03',30000)
INSERT INTO HOADON VALUES(1020,'14/01/2007','KH09','NV04',70000)
INSERT INTO HOADON VALUES(1021,'16/01/2007','KH10','NV03',67500)
INSERT INTO HOADON VALUES(1022,'16/01/2007',Null,'NV03',7000)
INSERT INTO HOADON VALUES(1023,'17/01/2007',Null,'NV01',330000)
select * from HOADON

-- Nhập dữ liệu cho CTHD
INSERT INTO CTHD VALUES(1001,'TV02',10)
INSERT INTO CTHD VALUES(1001,'ST01',5)
INSERT INTO CTHD VALUES(1001,'BC01',5)
INSERT INTO CTHD VALUES(1001,'BC02',10)
INSERT INTO CTHD VALUES(1001,'ST08',10)
INSERT INTO CTHD VALUES(1002,'BC04',20)
INSERT INTO CTHD VALUES(1002,'BB01',20)
INSERT INTO CTHD VALUES(1002,'BB02',20)
INSERT INTO CTHD VALUES(1003,'BB03',10)
INSERT INTO CTHD VALUES(1004,'TV01',20)
INSERT INTO CTHD VALUES(1004,'TV02',10)
INSERT INTO CTHD VALUES(1004,'TV03',10)
INSERT INTO CTHD VALUES(1004,'TV04',10)
INSERT INTO CTHD VALUES(1005,'TV05',50)
INSERT INTO CTHD VALUES(1005,'TV06',50)
INSERT INTO CTHD VALUES(1006,'TV07',20)
INSERT INTO CTHD VALUES(1006,'ST01',30)
INSERT INTO CTHD VALUES(1006,'ST02',10)
INSERT INTO CTHD VALUES(1007,'ST03',10)
INSERT INTO CTHD VALUES(1008,'ST04',8)
INSERT INTO CTHD VALUES(1009,'ST05',10)
INSERT INTO CTHD VALUES(1010,'TV07',50)
INSERT INTO CTHD VALUES(1010,'ST07',50)
INSERT INTO CTHD VALUES(1010,'ST08',100)
INSERT INTO CTHD VALUES(1010,'ST04',50)
INSERT INTO CTHD VALUES(1010,'TV03',100)
INSERT INTO CTHD VALUES(1011,'ST06',50)
INSERT INTO CTHD VALUES(1012,'ST07',3)
INSERT INTO CTHD VALUES(1013,'ST08',5)
INSERT INTO CTHD VALUES(1014,'BC02',80)
INSERT INTO CTHD VALUES(1014,'BB02',100)
INSERT INTO CTHD VALUES(1014,'BC04',60)
INSERT INTO CTHD VALUES(1014,'BB01',50)
INSERT INTO CTHD VALUES(1015,'BB02',30)
INSERT INTO CTHD VALUES(1015,'BB03',7)
INSERT INTO CTHD VALUES(1016,'TV01',5)
INSERT INTO CTHD VALUES(1017,'TV02',1)
INSERT INTO CTHD VALUES(1017,'TV03',1)
INSERT INTO CTHD VALUES(1017,'TV04',5)
INSERT INTO CTHD VALUES(1018,'ST04',6)
INSERT INTO CTHD VALUES(1019,'ST05',1)
INSERT INTO CTHD VALUES(1019,'ST06',2)
INSERT INTO CTHD VALUES(1020,'ST07',10)
INSERT INTO CTHD VALUES(1021,'ST08',5)
INSERT INTO CTHD VALUES(1021,'TV01',7)
INSERT INTO CTHD VALUES(1021,'TV02',10)
INSERT INTO CTHD VALUES(1022,'ST07',1)
INSERT INTO CTHD VALUES(1023,'ST04',6)
select *from CTHD

-- PHẦN 2 --
-- Câu 2 --
select * into SANPHAM1 from SANPHAM
select * into KHACHHANG1 from KHACHHANG
-- Câu 3 -- 
update SANPHAM1 set GIA = GIA* 1.05 where NUOCSX ='Thai Lan'
-- Câu 4 --
update SANPHAM1 set  GIA = GIA* 0.95 where (NUOCSX='Trung Quoc') and (GIA <= 10000)
-- Câu 5 --
update KHACHHANG1 set LOAIKH = 'Vip' where (NGDK < '01/01/2017' AND DOANHSO >= 10000000) OR (NGDK > '01/01/2017' AND DOANHSO >= 2000000)
-- PHẦN 3 --
-- Câu 1 --
SELECT MASP,TENSP FROM SANPHAM WHERE NUOCSX = 'Trung Quoc'
-- Câu 2 --
SELECT MASP,TENSP FROM SANPHAM WHERE (DVT = 'cay') or (DVT ='quyen')
-- Câu 3 --
SELECT MASP, TENSP FROM SANPHAM WHERE (LEFT(MASP,1)='B') and (RIGHT(MASP,2)='01')
-- Câu 4 -- 
SELECT MASP,TENSP FROM SANPHAM WHERE NUOCSX = 'Trung Quoc' and (GIA >= 30000 and GIA <= 40000)
-- Câu 5 --
SELECT MASP,TENSP FROM SANPHAM WHERE (NUOCSX = 'Trung Quoc' or NUOCSX ='Thai Lan') and (GIA >= 30000 and GIA <= 40000)
-- Câu 6 --
SELECT SOHD,TRIGIA FROM HOADON WHERE (NGHD = '01/01/2007' OR NGHD ='02/01/2007')
-- Câu 7 --
SELECT SOHD, TRIGIA FROM HOADON WHERE (NGHD >= '01/01/2007' and NGHD <= '31/01/2007') ORDER BY NGHD ASC,TRIGIA DESC
-- Câu 8 --
SELECT KHACHHANG.MAKH,KHACHHANG.HOTEN FROM KHACHHANG,HOADON WHERE KHACHHANG.MAKH = HOADON.MAKH AND NGHD = '01/01/2007'
-- Câu 9 --
SELECT HOADON.NGHD, NHANVIEN.HOTEN FROM HOADON, NHANVIEN WHERE HOADON.MANV = NHANVIEN.MANV AND HOTEN = 'Nguyen Van B' AND NGHD = '28/10/2006'
-- Câu 10 --
select *from KHACHHANG
SELECT SANPHAM.MASP, SANPHAM.TENSP FROM KHACHHANG,SANPHAM,HOADON,CTHD WHERE KHACHHANG.MAKH = HOADON.MAKH AND HOADON.SOHD = CTHD.SOHD AND SANPHAM.MASP = CTHD.MASP AND HOTEN = 'Nguyen Van A' AND NGHD >= '01/10/2006' AND NGHD <= '31/10/2006'
-- Câu 11 --
SELECT HOADON.SOHD FROM SANPHAM,HOADON,CTHD WHERE SANPHAM.MASP = CTHD.MASP AND HOADON.SOHD = CTHD.SOHD AND (SANPHAM.MASP = 'BB01' OR SANPHAM.MASP ='BB02')
-- Quan Ly Giao Vu --
USE QuanLyGiaoVu
 -- Nhập dữ liệu cho GIAOVIEN
insert into GIAOVIEN values('GV01','Ho Thanh Son','PTS','GS','Nam','2/5/1950','11/1/2004',5.00,2250000,'KHMT')
insert into GIAOVIEN values('GV02','Tran Tam Thanh','TS','PGS','Nam','17/12/1965','20/4/2004',4.50,2025000,'HTTT')
insert into GIAOVIEN values('GV03','Do Nghiem Phung','TS','GS','Nu','1/8/1950','23/9/2004',4.00,1800000,'CNPM')
insert into GIAOVIEN values('GV04','Tran Nam Son','TS','PGS','Nam','22/2/1961','12/1/2005',4.50,2025000,'KTMT')
insert into GIAOVIEN values('GV05','Mai Thanh Danh','ThS','GV','Nam','12/3/1958','12/1/2005',3.00,1350000,'HTTT')
insert into GIAOVIEN values('GV06','Tran Doan Hung','TS','GV','Nam','11/3/1953','12/1/2005',4.50,2025000,'KHMT')
insert into GIAOVIEN values('GV07','Nguyen Minh Tien','ThS','GV','Nam','23/11/1971','1/3/2005',4.00,1800000,'KHMT')
insert into GIAOVIEN values('GV08','Le Thi Tran','KS','','Nu','26/3/1974','1/3/2005',1.69,760500,'KHMT')
insert into GIAOVIEN values('GV09','Nguyen To Lan','ThS','GV','Nu','31/12/1966','1/3/2005',4.00,1800000,'HTTT')
insert into GIAOVIEN values('GV10','Le Tran Anh Loan','KS','','Nu','17/7/1972','1/3/2005',1.86,837000,'CNPM')
insert into GIAOVIEN values('GV11','Ho Thanh Tung','CN','GV','Nam','12/1/1980','15/5/2005',2.67,1201500,'MTT')
insert into GIAOVIEN values('GV12','Tran Van Anh','CN','','Nu','29/3/1981','15/5/2005',1.69,760500,'CNPM')
insert into GIAOVIEN values('GV13','Nguyen Linh Dan','CN','','Nu','23/5/1980','15/5/2005',1.69,760500,'KTMT')
insert into GIAOVIEN values('GV14','Truong Minh Chau','ThS','GV','Nu','30/11/1976','15/5/2005',3.00,1350000,'MTT')
insert into GIAOVIEN values('GV15','Le Ha Thanh','ThS','GV','Nam','4/5/1978','15/5/2005',3.00,1350000,'KHMT')
 -- Nhập dữ liệu cho HOCVIEN
insert into HOCVIEN values('K1101','Nguyen Van','A','27/1/1986','Nam','TpHCM','K11')
insert into HOCVIEN values('K1102','Tran Ngoc','Han','1/3/1986','Nu','Kien Giang','K11')
insert into HOCVIEN values('K1103','Ha Duy','Lap','18/4/1986','Nam','Nghe An','K11')
insert into HOCVIEN values('K1104','Tran Ngoc','Linh','30/3/1986','Nu','Tay Ninh','K11')
insert into HOCVIEN values('K1105','Tran Minh','Long','27/2/1986','Nam','TpHCM','K11')
insert into HOCVIEN values('K1106','Le Nhat','Minh','24/1/1986','Nam','TpHCM','K11')
insert into HOCVIEN values('K1107','Nguyen Nhu','Nhut','27/1/1986','Nam','Ha Noi','K11')
insert into HOCVIEN values('K1108','Nguyen Manh','Tam','27/2/1986','Nam','Kien Giang','K11')
insert into HOCVIEN values('K1109','Phan Thi Thanh','Tam','27/1/1986','Nu','Vinh Long','K11')
insert into HOCVIEN values('K1110','Le Hoai','Thuong','5/2/1986','Nu','Can Tho','K11')
insert into HOCVIEN values('K1111','Le Ha','Vinh','25/12/1986','Nam','Vinh Long','K11')
insert into HOCVIEN values('K1201','Nguyen Van','B','11/2/1986','Nam','TpHCM','K12')
insert into HOCVIEN values('K1202','Nguyen Thi Kim','Duyen','18/1/1986','Nu','TpHCM','K12')
insert into HOCVIEN values('K1203','Tran Thi Kim','Duyen','17/9/1986','Nu','TpHCM','K12')
insert into HOCVIEN values('K1204','Truong My','Hanh','19/5/1986','Nu','Dong Nai','K12')
insert into HOCVIEN values('K1205','Nguyen Thanh','Nam','17/4/1986','Nam','TpHCM','K12')
insert into HOCVIEN values('K1206','Nguyen Thi Truc','Thanh','4/3/1986','Nu','Kien Giang','K12')
insert into HOCVIEN values('K1207','Tran Thi Bich','Thuy','8/1986','Nu','Nghe An','K12')
insert into HOCVIEN values('K1208','Huynh Thi Kim','Trieu','4/2/8/1986','Nu','Tay Ninh','K12')
insert into HOCVIEN values('K1209','Pham Thanh','Trieu','23/2/1986','Nam','TpHCM','K12')
insert into HOCVIEN values('K1210','Ngo Thanh','Tuan','14/2/1986','Nam','TpHCM','K12')
insert into HOCVIEN values('K1211','Do Thi','Xuan','9/3/1986','Nu','Ha Noi','K12')
insert into HOCVIEN values('K1212','Le Thi Phi','Yen','12/3/1986','Nu','TpHCM','K12')
insert into HOCVIEN values('K1301','Nguyen Thi Kim','Cuc','9/6/1986','Nu','Kien Giang','K13')
insert into HOCVIEN values('K1302','Truong Thi My','Hien','18/3/1986','Nu','Nghe An','K13')
insert into HOCVIEN values('K1303','Le Duc','Hien','12/3/1986','Nam','Tay Ninh','K13')
insert into HOCVIEN values('K1304','Le Quang','Hien','18/4/1986','Nam','TpHCM','K13')
insert into HOCVIEN values('K1305','Le Thi','Huong','27/3/1986','Nu','TpHCM','K13')
insert into HOCVIEN values('K1306','Nguyen Thai','Huu','30/3/1986','Nam','Ha Noi','K13')
insert into HOCVIEN values('K1307','Tran Minh','Man','28/5/1986','Nam','TpHCM','K13')
insert into HOCVIEN values('K1308','Nguyen Hieu','Nghia','8/4/1986','Nam','Kien Giang','K13')
insert into HOCVIEN values('K1309','Nguyen Trung','Nghia','18/1/1987','Nam','Nghe An','K13')
insert into HOCVIEN values('K1310','Tran Thi Hong','Tham','22/4/1986','Nu','Tay Ninh','K13')
insert into HOCVIEN values('K1311','Tran Minh','Thuc','4/4/1986','Nam','TpHCM','K13')
insert into HOCVIEN values('K1312','Nguyen Thi Kim','Yen','7/9/1986','Nu','TpHCM','K13')
select *from HOCVIEN

 -- Nhập dữ liệu cho MONHOC
insert into MONHOC values('THDC','Tin hoc dai cuong',4,1,'KHMT')
insert into MONHOC values('CTRR','Cau truc roi rac',5,0,'KHMT')
insert into MONHOC values('CSDL','Co so du lieu',3,1,'HTTT')
insert into MONHOC values('CTDLGT','Cau truc du lieu va giai thuat',3,1,'KHMT')
insert into MONHOC values('PTTKTT','Phan tich thiet ke thuat toan',3,0,'KHMT')
insert into MONHOC values('DHMT','Do hoa may tinh',3,1,'KHMT')
insert into MONHOC values('KTMT','Kien truc may tinh',3,0,'KTMT')
insert into MONHOC values('TKCSDL','Thiet ke co so du lieu',3,1,'HTTT')
insert into MONHOC values('PTTKHTTT','Phan tich thiet ke he thong thong tin',4,1,'HTTT')
insert into MONHOC values('HDH','He dieu hanh',4,0,'KTMT')
insert into MONHOC values('NMCNPM','Nhap mon cong nghe phan mem',3,0,'CNPM')
insert into MONHOC values('LTCFW','Lap trinh C for win',3,1,'CNPM')
insert into MONHOC values('LTHDT','Lap trinh huong doi tuong',3,1,'CNPM')
SELECT *FROM MONHOC
 -- Nhập dữ liệu cho KHOA
insert into KHOA values('KHMT','Khoa hoc may tinh','07/06/2005','GV01')
insert into KHOA values('HTTT','He thong thong tin','07/06/2005','GV02')
insert into KHOA values('CNPM','Cong nghe phan mem','07/06/2005','GV04')
insert into KHOA values('MTT','Mang va truyen thong','20/10/2005','GV03')
insert into KHOA values('KTMT','Ky thuat may tinh','20/12/2005',Null)

 -- Nhập dữ liệu cho LOP
insert into LOP values('K11','Lop 1 khoa 1','K1108',11,'GV07')
insert into LOP values('K12','Lop 2 khoa 1','K1205',12,'GV09')
insert into LOP values('K13','Lop 3 khoa 1','K1305',12,'GV14')

select *from LOP
 -- Nhập dữ liệu cho GIANGDAY
insert into GIANGDAY values('K11','THDC','GV07',1,2006,'2/1/2006','12/5/2006')
insert into GIANGDAY values('K12','THDC','GV06',1,2006,'2/1/2006','12/5/2006')
insert into GIANGDAY values('K13','THDC','GV15',1,2006,'2/1/2006','12/5/2006')
insert into GIANGDAY values('K11','CTRR','GV02',1,2006,'9/1/2006','17/5/2006')
insert into GIANGDAY values('K12','CTRR','GV02',1,2006,'9/1/2006','17/5/2006')
insert into GIANGDAY values('K13','CTRR','GV08',1,2006,'9/1/2006','17/5/2006')
insert into GIANGDAY values('K11','CSDL','GV05',2,2006,'1/6/2006','15/7/2006')
insert into GIANGDAY values('K12','CSDL','GV09',2,2006,'1/6/2006','15/7/2006')
insert into GIANGDAY values('K13','CTDLGT','GV15',2,2006,'1/6/2006','15/7/2006')
insert into GIANGDAY values('K13','CSDL','GV05',3,2006,'1/8/2006','15/12/2006')
insert into GIANGDAY values('K13','DHMT','GV07',3,2006,'1/8/2006','15/12/2006')
insert into GIANGDAY values('K11','CTDLGT','GV15',3,2006,'1/8/2006','15/12/2006')
insert into GIANGDAY values('K12','CTDLGT','GV15',3,2006,'1/8/2006','15/12/2006')
insert into GIANGDAY values('K11','HDH','GV04',1,2007,'2/1/2007','18/2/2007')
insert into GIANGDAY values('K12','HDH','GV04',1,2007,'2/1/2007','20/3/2007')
insert into GIANGDAY values('K11','DHMT','GV07',1,2007,'18/2/2007','20/3/2007')

select *from GIANGDAY
-- Nhập dữ liệu cho DIEUKIEN
insert into DIEUKIEN values('CSDL','CTRR')
insert into DIEUKIEN values('CSDL','CTDLGT')
insert into DIEUKIEN values('CTDLGT','THDC')
insert into DIEUKIEN values('PTTKTT','THDC')
insert into DIEUKIEN values('PTTKTT','CTDLGT')
insert into DIEUKIEN values('DHMT','THDC')
insert into DIEUKIEN values('LTHDT','THDC')
insert into DIEUKIEN values('PTTKHTTT','CSDL')

select *from DIEUKIEN
-- Nhập dữ liệu cho KETQUATHI

insert into KETQUATHI values('K1101','CSDL',1,'20/05/2006',10,'Dat')
insert into KETQUATHI values('K1101','CTDLGT',1,'28/12/2006',9,'Dat')
insert into KETQUATHI values('K1101','THDC',1,'20/05/2006',9,'Dat')
insert into KETQUATHI values('K1101','CTRR',1,'13/05/2006',9.5,'Dat')
insert into KETQUATHI values('K1102','CSDL',1,'20/07/2006',4,'Khong Dat')
insert into KETQUATHI values('K1102','CSDL',2,'27/07/2006',4.25,'Khong Dat')
insert into KETQUATHI values('K1102','CSDL',3,'10/08/2006',4.5,'Khong Dat')
insert into KETQUATHI values('K1102','CTDLGT',1,'28/12/2006',4.5,'Khong Dat')
insert into KETQUATHI values('K1102','CTDLGT',2,'05/01/2007',4,'Khong Dat')
insert into KETQUATHI values('K1102','CTDLGT',3,'15/01/2007',6,'Dat')
insert into KETQUATHI values('K1102','THDC',1,'20/05/2006',5,'Dat')
insert into KETQUATHI values('K1102','CTRR',1,'13/05/2006',7,'Dat')
insert into KETQUATHI values('K1103','CSDL',1,'20/07/2006',3.5,'Khong Dat')
insert into KETQUATHI values('K1103','CSDL',2,'27/07/2006',8.25,'Dat')
insert into KETQUATHI values('K1103','CTDLGT',1,'28/12/2006',7,'Dat')
insert into KETQUATHI values('K1103','THDC',1,'20/05/2006',8,'Dat')
insert into KETQUATHI values('K1103','CTRR',1,'13/05/2006',6.5,'Dat')
insert into KETQUATHI values('K1104','CSDL',1,'20/07/2006',3.75,'Khong Dat')
insert into KETQUATHI values('K1104','CTDLGT',1,'28/12/2006',4,'Khong Dat')
insert into KETQUATHI values('K1104','THDC',1,'20/05/2006',4,'Khong Dat')
insert into KETQUATHI values('K1104','CTRR',1,'13/05/2006',4,'Khong Dat')
insert into KETQUATHI values('K1104','CTRR',2,'20/05/2006',3.5,'Khong Dat')
insert into KETQUATHI values('K1104','CTRR',3,'30/06/2006',4,'Khong Dat')
insert into KETQUATHI values('K1201','CSDL',1,'20/07/2006',6,'Dat')
insert into KETQUATHI values('K1201','CTDLGT',1,'28/12/2006',5,'Dat')
insert into KETQUATHI values('K1201','THDC',1,'20/05/2006',8.5,'Dat')
insert into KETQUATHI values('K1201','CTRR',1,'13/05/2006',9,'Dat')
insert into KETQUATHI values('K1202','CSDL',1,'20/07/2006',8,'Dat')
insert into KETQUATHI values('K1202','CTDLGT',1,'28/12/2006',4,'Khong Dat')
insert into KETQUATHI values('K1202','CTDLGT',2,'05/01/2007',5,'Dat')
insert into KETQUATHI values('K1202','THDC',1,'20/05/2006',4,'Khong Dat')
insert into KETQUATHI values('K1202','THDC',2,'27/05/2006',4,'Khong Dat')
insert into KETQUATHI values('K1202','CTRR',1,'13/05/2006',3,'Khong Dat')

insert into KETQUATHI values('K1202','CTRR',2,'20/05/2006',4,'Khong Dat')
insert into KETQUATHI values('K1202','CTRR',3,'30/06/2006',6.25,'Dat')
insert into KETQUATHI values('K1203','CSDL',1,'20/07/2006',9.25,'Dat')
insert into KETQUATHI values('K1203','CTDLGT',1,'28/12/2006',9.5,'Dat')
insert into KETQUATHI values('K1203','THDC',1,'20/05/2006',10,'Dat')
insert into KETQUATHI values('K1203','CTRR',1,'13/05/2006',10,'Dat')
insert into KETQUATHI values('K1204','CSDL',1,'20/07/2006',8.5,'Dat')
insert into KETQUATHI values('K1204','CTDLGT',1,'28/12/2006',6.75,'Dat')
insert into KETQUATHI values('K1204','THDC',1,'20/05/2006',4,'Khong Dat')
insert into KETQUATHI values('K1204','CTRR',1,'13/05/2006',6,'Dat')
insert into KETQUATHI values('K1301','CSDL',1,'20/12/2006',4.25,'Khong Dat')
insert into KETQUATHI values('K1301','CTDLGT',1,'25/07/2006',8,'Dat')
insert into KETQUATHI values('K1301','THDC',1,'20/05/2006',7.75,'Dat')
insert into KETQUATHI values('K1301','CTRR',1,'13/05/2006',8,'Dat')
insert into KETQUATHI values('K1302','CSDL',1,'20/12/2006',6.75,'Dat')
insert into KETQUATHI values('K1302','CTDLGT',1,'25/07/2006',5,'Dat')
insert into KETQUATHI values('K1302','THDC',1,'20/05/2006',8,'Dat')
insert into KETQUATHI values('K1302','CTRR',1,'13/05/2006',8.5,'Dat')
insert into KETQUATHI values('K1303','CSDL',1,'20/12/2006',4,'Khong Dat')
insert into KETQUATHI values('K1303','CTDLGT',1,'25/07/2006',4.5,'Khong Dat')
insert into KETQUATHI values('K1303','CTDLGT',2,'07/08/2006',4,'Khong Dat')
insert into KETQUATHI values('K1303','CTDLGT',3,'15/08/2006',4.25,'Khong Dat')
insert into KETQUATHI values('K1303','THDC',1,'20/05/2006',4.5,'Khong Dat')
insert into KETQUATHI values('K1303','CTRR',1,'13/05/2006',3.25,'Khong Dat')
insert into KETQUATHI values('K1303','CTRR',2,'20/05/2006',5,'Dat')
insert into KETQUATHI values('K1304','CSDL',1,'20/12/2006',7.75,'Dat')
insert into KETQUATHI values('K1304','CTDLGT',1,'25/07/2006',9.75,'Dat')
insert into KETQUATHI values('K1304','THDC',1,'20/05/2006',5.5,'Dat')
insert into KETQUATHI values('K1304','CTRR',1,'13/05/2006',5,'Dat')
insert into KETQUATHI values('K1305','CSDL',1,'20/12/2006',9.25,'Dat')
insert into KETQUATHI values('K1305','CTDLGT',1,'25/07/2006',10,'Dat')
insert into KETQUATHI values('K1305','THDC',1,'20/05/2006',8,'Dat')
insert into KETQUATHI values('K1305','CTRR',1,'13/05/2006',10,'Dat')
SELECT *FROM KETQUATHI

-- PHẦN 1 --
-- Câu 11 --
ALTER TABLE HOCVIEN ADD CONSTRAINT CK_TUOI CHECK (YEAR(GETDATE()) - YEAR(NGSINH) >= 18)
-- Câu 12 --
ALTER TABLE GIANGDAY ADD CONSTRAINT CK_NGAY CHECK (TUNGAY < DENNGAY)
-- Câu 13 --
ALTER TABLE GIAOVIEN ADD CONSTRAINT CK_TUOIGIAOVIEN CHECK (YEAR(GETDATE()) - YEAR(NGSINH) >= 22)
-- Câu 14 --
ALTER TABLE MONHOC ADD CONSTRAINT CK_TC CHECK (ABS(TCLT-TCTH) <=3)

-- PHẦN 3 --
-- Câu 1 --
SELECT MAHV,HO,TEN,NGSINH,HOCVIEN.MALOP 
FROM LOP,HOCVIEN 
WHERE HOCVIEN.MAHV = LOP.TRGLOP
-- Câu 2 -- 
SELECT HOCVIEN.MAHV,HO,TEN,LANTHI,DIEM 
FROM KETQUATHI,HOCVIEN 
WHERE KETQUATHI.MAHV = HOCVIEN.MAHV AND KETQUATHI.MAMH = 'CTRR' AND HOCVIEN.MALOP = 'K12' 
ORDER BY TEN,HO
-- Câu 3 --
SELECT HOCVIEN.MAHV,HO,TEN, MAMH
FROM HOCVIEN, KETQUATHI
WHERE KETQUATHI.MAHV = HOCVIEN.MAHV AND KETQUATHI.LANTHI = 1 AND KETQUATHI.KQUA = 'Dat'
-- Câu 4 --
SELECT HOCVIEN.MAHV,HO,TEN 
FROM HOCVIEN, KETQUATHI
WHERE KETQUATHI.MAHV = HOCVIEN.MAHV AND KETQUATHI.LANTHI = 1 AND KETQUATHI.KQUA = 'Khong Dat' AND KETQUATHI.MAMH = 'CTRR' AND HOCVIEN.MALOP = 'K11'
-- Câu 5 --
SELECT HOCVIEN.MAHV,HO,TEN
FROM HOCVIEN, KETQUATHI
WHERE KETQUATHI.MAHV = HOCVIEN.MAHV AND LEFT(HOCVIEN.MALOP,1) = 'K' AND KETQUATHI.KQUA ='Khong Dat' AND KETQUATHI.MAMH = 'CTRR' 