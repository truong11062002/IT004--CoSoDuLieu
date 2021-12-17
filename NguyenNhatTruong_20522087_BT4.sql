USE QuanLyBanHang
-- PHẦN III QUAN LY BAN HANG---
--20.	Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua?
SELECT COUNT(SOHD) AS 'SO LUONG HOA DON'
FROM HOADON
WHERE MAKH IS NULL
--21.	Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.
SELECT COUNT( DISTINCT CTHD.MASP) AS 'SO LUONG SAN PHAM'
FROM SANPHAM, CTHD, HOADON
WHERE SANPHAM.MASP = CTHD.MASP AND HOADON.SOHD = CTHD.SOHD AND YEAR(HOADON.NGHD) = '2006'
--22.	Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu ?
SELECT MAX(TRIGIA) AS 'TRI GIA CAO NHAT', MIN(TRIGIA) AS 'TRI GIA THAP NHAT'
FROM HOADON
--23.	Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?
SELECT AVG(TRIGIA) AS 'TRI GIA TRUNG BINH'
FROM HOADON
WHERE YEAR(HOADON.NGHD) = '2006'
--24.	Tính doanh thu bán hàng trong năm 2006.
SELECT SUM(TRIGIA) AS 'DOANH THU'
FROM HOADON
WHERE YEAR(HOADON.NGHD) = '2006'
--25.	Tìm số hóa đơn có trị giá cao nhất trong năm 2006.
SELECT HOADON.SOHD
FROM HOADON
WHERE TRIGIA =( SELECT MAX(TRIGIA) FROM HOADON WHERE YEAR(NGHD) = '2006')
--26.	Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006.
SELECT KHACHHANG.HOTEN
FROM HOADON, KHACHHANG
WHERE HOADON.MAKH = KHACHHANG.MAKH AND TRIGIA = (SELECT MAX(TRIGIA) FROM HOADON WHERE YEAR(NGHD) = '2006')
--27.	In ra danh sách 3 khách hàng đầu tiên (MAKH, HOTEN) sắp xếp theo doanh số giảm dần.
SELECT TOP 3 MAKH,HOTEN
FROM KHACHHANG
ORDER BY DOANHSO DESC

--28.	In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.
SELECT MASP, TENSP
FROM SANPHAM
WHERE SANPHAM.GIA IN (
SELECT TOP 3 SANPHAM.GIA
FROM SANPHAM
ORDER BY GIA DESC
)

--29.	In ra danh sách các sản phẩm (MASP, TENSP) do “Thai Lan” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của tất cả các sản phẩm).
SELECT MASP, TENSP
FROM SANPHAM
WHERE NUOCSX = 'Thai Lan' AND SANPHAM.GIA IN (
SELECT TOP 3 SANPHAM.GIA
FROM SANPHAM
ORDER BY GIA DESC
)

--30.	In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của sản phẩm do “Trung Quoc” sản xuất).
SELECT MASP, TENSP
FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc' AND SANPHAM.GIA IN (
SELECT TOP 3 SANPHAM.GIA
FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc'
ORDER BY GIA DESC
)

--31.	* In ra danh sách khách hàng nằm trong 3 hạng cao nhất (xếp hạng theo doanh số).
SELECT TOP 3 * FROM KHACHHANG
ORDER BY DOANHSO DESC

--32.	Tính tổng số sản phẩm do “Trung Quoc” sản xuất.
SELECT COUNT(SANPHAM.MASP) AS 'TONG SAN PHAM TRUNG QUOC SX' FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc'
--33.	Tính tổng số sản phẩm của từng nước sản xuất.
SELECT COUNT(SANPHAM.MASP) AS 'TONG SO SAN PHAM', NUOCSX FROM SANPHAM
GROUP BY NUOCSX
--34.	Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm.
SELECT NUOCSX, MAX(SANPHAM.GIA) AS 'GIA CAO NHAT',MIN(SANPHAM.GIA) AS 'GIA THAP NHAT', AVG(SANPHAM.GIA) AS 'GIA TRUNG BINH' 
FROM SANPHAM
GROUP BY NUOCSX
--35.	Tính doanh thu bán hàng mỗi ngày.
SELECT NGHD ,SUM(TRIGIA) AS 'Doanh Thu' FROM HOADON GROUP BY NGHD
--36.	Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006.
SELECT SANPHAM.MASP, SUM(CTHD.SL) AS 'TONG SO LUONG' FROM CTHD, HOADON, SANPHAM
WHERE CTHD.SOHD = HOADON.SOHD AND SANPHAM.MASP = CTHD.MASP AND MONTH(NGHD) = '10'
GROUP BY SANPHAM.MASP
--37.	Tính doanh thu bán hàng của từng tháng trong năm 2006.
SELECT MONTH(NGHD) AS 'Thang', SUM(TRIGIA) AS 'Doanh Thu' FROM HOADON
WHERE YEAR(NGHD) = '2006'
GROUP BY MONTH(NGHD)
--38.	Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.
SELECT SOHD FROM CTHD
GROUP BY SOHD
HAVING COUNT( DISTINCT CTHD.MASP) >= 4
--39.	Tìm hóa đơn có mua 3 sản phẩm do “Viet Nam” sản xuất (3 sản phẩm khác nhau).
SELECT SOHD FROM CTHD,SANPHAM
WHERE SANPHAM.MASP = CTHD.MASP AND NUOCSX= 'Viet Nam'
GROUP BY SOHD
HAVING COUNT( DISTINCT CTHD.MASP) >= 3
--40.	Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất.
SELECT KHACHHANG.MAKH, HOTEN FROM KHACHHANG, HOADON
WHERE KHACHHANG.MAKH = HOADON.MAKH
GROUP BY KHACHHANG.MAKH, HOTEN
HAVING COUNT(*) >= ALL(SELECT COUNT(*) FROM HOADON GROUP BY MAKH)

--41.	Tháng mấy trong năm 2006, doanh số bán hàng cao nhất ?
SELECT MONTH(NGHD) AS 'Thang' FROM HOADON
WHERE YEAR(NGHD) = '2006'
GROUP BY MONTH(NGHD)
HAVING SUM(TRIGIA) >= ALL(SELECT SUM(TRIGIA) FROM HOADON WHERE YEAR(NGHD) = '2006' GROUP BY MONTH(NGHD))
--42.	Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006.
SELECT SANPHAM.MASP, TENSP FROM SANPHAM, CTHD, HOADON
WHERE SANPHAM.MASP = CTHD.MASP AND HOADON.SOHD = CTHD.SOHD AND YEAR(NGHD) = '2006'
GROUP BY SANPHAM.MASP, TENSP
HAVING SUM(SL) <= ALL(SELECT SUM(SL) FROM CTHD,HOADON WHERE HOADON.SOHD = CTHD.SOHD AND YEAR(NGHD) = '2006' GROUP BY CTHD.MASP)
--43.	*Mỗi nước sản xuất, tìm sản phẩm (MASP,TENSP) có giá bán cao nhất.
SELECT NUOCSX, MASP, TENSP
FROM SANPHAM SP1
WHERE EXISTS
(
	SELECT NUOCSX
	FROM SANPHAM SP2
	GROUP BY NUOCSX
	HAVING SP1.NUOCSX = SP2.NUOCSX
	AND SP1.GIA = MAX(GIA)
)
--44.	Tìm nước sản xuất sản xuất ít nhất 3 sản phẩm có giá bán khác nhau.
SELECT NUOCSX FROM SANPHAM
GROUP BY NUOCSX
HAVING COUNT( DISTINCT GIA) >= 3

--45.	*Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.
SELECT *
FROM KHACHHANG
WHERE MAKH IN
(
	SELECT TOP 1 WITH TIES HOADON.MAKH
	FROM (SELECT TOP 10 MAKH FROM KHACHHANG ORDER BY DOANHSO DESC) AS A
	JOIN HOADON ON A.MAKH = HOADON.MAKH
	GROUP BY HOADON.MAKH
	ORDER BY COUNT(*) DESC
)
-- PHẦN III QUAN LY GIAO VU--
USE QuanLyGiaoVu
--19.	Khoa nào (mã khoa, tên khoa) được thành lập sớm nhất.
SELECT MAKHOA, TENKHOA FROM KHOA WHERE NGTLAP = (SELECT TOP 1 NGTLAP FROM KHOA ORDER BY NGTLAP ASC)
--20.	Có bao nhiêu giáo viên có học hàm là “GS” hoặc “PGS”.
SELECT COUNT(MAGV) AS 'SO LUONG GIAO VIEN' FROM GIAOVIEN WHERE HOCHAM = 'GS' OR HOCHAM = 'PGS'
--21.	Thống kê có bao nhiêu giáo viên có học vị là “CN”, “KS”, “Ths”, “TS”, “PTS” trong mỗi khoa.
SELECT MAKHOA , COUNT(MAGV) AS 'SO LUONG GIAO VIEN' FROM GIAOVIEN 
WHERE HOCVI = 'CN' OR HOCVI = 'KS' OR HOCVI = 'Ths' OR HOCVI = 'TS' OR HOCVI = 'PTS'
GROUP BY MAKHOA
--22.	Mỗi môn học thống kê số lượng học viên theo kết quả (đạt và không đạt).
SELECT MAMH, COUNT(MAHV) AS 'SO LUONG HOC VIEN', KQUA FROM KETQUATHI
GROUP BY MAMH, KQUA
--23.	Tìm giáo viên (mã giáo viên, họ tên) là giáo viên chủ nhiệm của một lớp, đồng thời dạy cho lớp đó ít nhất một môn học.
SELECT DISTINCT MAGVCN, HOTEN FROM GIAOVIEN, LOP, GIANGDAY
WHERE GIANGDAY.MAGV = LOP.MAGVCN AND GIANGDAY.MAGV = GIAOVIEN.MAGV AND GIANGDAY.MALOP = LOP.MALOP

--24.	Tìm họ tên lớp trưởng của lớp có sỉ số cao nhất.
SELECT HOCVIEN.HO+ ' ' +TEN AS HT_HOCVIEN  FROM HOCVIEN, LOP
WHERE HOCVIEN.MAHV = LOP.TRGLOP AND SISO >= ALL(SELECT SISO FROM LOP)

--25.	* Tìm họ tên những LOPTRG thi không đạt quá 3 môn (mỗi môn đều thi không đạt ở tất cả các lần thi).
SELECT MAHV, HOCVIEN.HO, HOCVIEN.TEN
FROM HOCVIEN
WHERE MAHV IN (
SELECT TRGLOP FROM LOP
)
AND MAHV IN (
SELECT MAHV
FROM KETQUATHI KQ1
WHERE NOT EXISTS (
	SELECT * FROM KETQUATHI KQ2
	WHERE KQ2.MAHV = KQ1.MAHV
	AND KQ2.MAMH = KQ1.MAMH
	AND KQUA = 'Dat'
)
GROUP BY MAHV
HAVING COUNT(DISTINCT MAMH) > 3
)

--26.	Tìm học viên (mã học viên, họ tên) có số môn đạt điểm 9,10 nhiều nhất.
SELECT HOCVIEN.MAHV, HOCVIEN.HO, HOCVIEN.TEN FROM HOCVIEN, KETQUATHI
WHERE HOCVIEN.MAHV = KETQUATHI.MAHV AND DIEM >= 9
GROUP BY HOCVIEN.MAHV, HOCVIEN.HO, HOCVIEN.TEN
HAVING COUNT(*) >= ALL(SELECT COUNT(*) FROM KETQUATHI WHERE DIEM >=9 GROUP BY MAHV)

--27.	Trong từng lớp, tìm học viên (mã học viên, họ tên) có số môn đạt điểm 9,10 nhiều nhất.
SELECT
	MALOP,MAHV, HO , TEN
FROM
(
	SELECT
		MALOP, HOCVIEN.MAHV, HO,TEN , COUNT(*) SOLUONGDIEM, RANK() OVER (PARTITION BY MALOP ORDER BY COUNT(*) DESC) AS XEPHANG
	FROM
		HOCVIEN, KETQUATHI
	WHERE
		HOCVIEN.MAHV = KETQUATHI.MAHV
		AND DIEM >= 9
	GROUP BY
		MALOP, HOCVIEN.MAHV, HO, TEN
) AS A
WHERE
	A.XEPHANG = 1
--28.	Trong từng học kỳ của từng năm, mỗi giáo viên phân công dạy bao nhiêu môn học, bao nhiêu lớp.
SELECT MAGV,HOCKY,NAM, COUNT(DISTINCT MAMH) AS 'SO MON HOC', COUNT(DISTINCT MALOP) AS 'SO LOP'  
FROM GIANGDAY
GROUP BY MAGV, HOCKY, NAM
--29.	Trong từng học kỳ của từng năm, tìm giáo viên (mã giáo viên, họ tên) giảng dạy nhiều nhất.
SELECT HOCKY, NAM, A.MAGV, HOTEN
FROM GIAOVIEN,
(
	SELECT 
		HOCKY, NAM, MAGV, RANK() OVER (PARTITION BY HOCKY, NAM ORDER BY COUNT(*) DESC) AS XEPHANG
	FROM GIANGDAY
	GROUP BY HOCKY, NAM, MAGV
) AS A
WHERE
	A.MAGV = GIAOVIEN.MAGV
	AND XEPHANG = 1
ORDER BY
	NAM, HOCKY

--30.	Tìm môn học (mã môn học, tên môn học) có nhiều học viên thi không đạt (ở lần thi thứ 1) nhất.
SELECT TOP 1 WITH TIES
	MONHOC.MAMH, TENMH
FROM
	MONHOC, KETQUATHI
WHERE
	MONHOC.MAMH = KETQUATHI.MAMH
	AND LANTHI = 1
	AND KQUA = 'Khong Dat'
GROUP BY
	MONHOC.MAMH, TENMH
ORDER BY
	COUNT(*) DESC
--31.	Tìm học viên (mã học viên, họ tên) thi môn nào cũng đạt (chỉ xét lần thi thứ 1).
SELECT DISTINCT
	HOCVIEN.MAHV, HO,TEN
FROM
	HOCVIEN, KETQUATHI
WHERE
	HOCVIEN.MAHV = KETQUATHI.MAHV
	AND NOT EXISTS
	(
		SELECT *
		FROM KETQUATHI
		WHERE LANTHI = 1
		AND KQUA = 'Khong Dat'
		AND MAHV = HOCVIEN.MAHV
	)
--32.	* Tìm học viên (mã học viên, họ tên) thi môn nào cũng đạt (chỉ xét lần thi sau cùng).
SELECT DISTINCT
	HOCVIEN.MAHV, HO,TEN
FROM
	HOCVIEN, KETQUATHI
WHERE
	HOCVIEN.MAHV = KETQUATHI.MAHV
	AND NOT EXISTS
	(
		SELECT *
		FROM KETQUATHI
		WHERE LANTHI = (SELECT MAX(LANTHI) FROM KETQUATHI WHERE MAHV = HOCVIEN.MAHV GROUP BY MAHV)
		AND KQUA = 'Khong Dat'
		AND MAHV = HOCVIEN.MAHV
	)
--33.	* Tìm học viên (mã học viên, họ tên) đã thi tất cả các môn đều đạt (chỉ xét lần thi thứ 1).
SELECT MAHV, (HO+' '+TEN) 
FROM HOCVIEN
WHERE NOT EXISTS
(
	SELECT *
	FROM MONHOC
	WHERE NOT EXISTS
	(
		SELECT *
		FROM KETQUATHI
		WHERE
			KETQUATHI.MAMH = MONHOC.MAMH
			AND KETQUATHI.MAHV = HOCVIEN.MAHV
			AND LANTHI = 1 AND KQUA = 'Dat'
	)
)
--34.	* Tìm học viên (mã học viên, họ tên) đã thi tất cả các môn đều đạt  (chỉ xét lần thi sau cùng).

SELECT MAHV, TEN
FROM HOCVIEN
WHERE MAHV NOT IN
(
	SELECT MAHV
	FROM KETQUATHI	T1
	WHERE LANTHI = (SELECT MAX(LANTHI)
					FROM KETQUATHI T2 
					WHERE  T2.MAHV = T1.MAHV)
	AND	 KQUA = 'Khong Dat'
	GROUP BY MAHV
)
--35.	** Tìm học viên (mã học viên, họ tên) có điểm thi cao nhất trong từng môn (lấy điểm ở lần thi sau cùng).
SELECT MAMH, MAHV, HO, TEN
FROM
(
	SELECT
		MAMH, HOCVIEN.MAHV, HO,TEN, RANK() OVER (PARTITION BY MAMH ORDER BY MAX(DIEM) DESC) AS XEPHANG
	FROM
		HOCVIEN, KETQUATHI
	WHERE
		HOCVIEN.MAHV = KETQUATHI.MAHV
		AND LANTHI = (SELECT MAX(LANTHI) FROM KETQUATHI WHERE MAHV = HOCVIEN.MAHV GROUP BY MAHV)
	GROUP BY
		MAMH, HOCVIEN.MAHV, HO, TEN
) AS A
WHERE XEPHANG = 1