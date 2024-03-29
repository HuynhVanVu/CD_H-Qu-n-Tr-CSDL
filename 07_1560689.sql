--Họ tên: Huỳnh Văn Vũ
--MSSV: 1560689
--Lớp: 15CK5

--FUNCTION KHÔNG SỬ DỤNG CSDL

-----------------------------------------------
--Câu 1: Nhận vào @a, @b và trả về tổng hai số @a, @b.
If OBJECT_ID('uf_tinhTong', 'p') is not null
		Drop function uf_tinhTong
go
Create function uf_tinhTong (@a float, @b float)
Returns float
Begin
	return @a + @b
End
Go
print N'Tổng = ' + cast(dbo.uf_tinhTong(5.5, 6.7) as char(10))
-----------------------------------------------

-----------------------------------------------
--Câu 2: Nhận vào @a, @b và tính tổng các số nằm trong đoạn [@a, @b].
		--a. Trả về giá trị tổng nếu @a > @b
		--b. Trả về 0 nếu @a = @b
		--c. Trả về -1 nếu @a < @b
Go
If OBJECT_ID('uf_tongDoan', 'p') is not null
		Drop function uf_tongDoan
go
Create function uf_tongDoan (@a int, @b int)
Returns int as
Begin
	Declare @temp int, @s int
	set @temp = @b
	
	--
	if (@a > @b)
	Begin
		set @s = 0
		while (@a >= @temp)
		Begin
			set @s = @s + @temp
			set @temp = @temp + 1
		End
	End
	
	--	
	if (@a = @b)
	Begin
		return 0
	End
	
	--
	if (@a < @b)
	Begin
		return -1
	End
	
	return @s
End
Go
print N'Tổng = ' + cast(dbo.uf_tongDoan(8, 6) as char(10))
-----------------------------------------------

-----------------------------------------------
--Câu 3: Nhận vào @n và kiểm tra n có phải số nguyên tố không
		--Trả về 1 nếu @n là số nguyên tố.
		--Trả về -1 nếu @n không là số nguyên tố
go
If OBJECT_ID('uf_kiemTraNguyenTo', 'p') is not null
		Drop function uf_kiemTraNguyenTo
go
Create function uf_kiemTraNguyenTo (@n int)
returns int as
Begin
	Declare @i int, @temp int, @ketqua int
	set @i = 2
	while (@i <= @n)
	Begin
		set @temp = @n % @i
		if (@temp = 0 and @n != 2)
		Begin
			set @ketqua = 0
			break;
		End
		
		Else
		Begin
			set @i = @i + 1
			if (@i = @n or @n = 2)
			begin
				set @ketqua = 1
				break;
			end
		End
	End	
	
	return @ketqua	
End
go
print dbo.uf_kiemTraNguyenTo(11)
-----------------------------------------------

go
-----------------------------------------------
--Câu 4: Nhận vào @a, @b và đếm các số nguyên tố trong đoạn [@a, @b]. Lưu ý: sử dụng lại function ở câu 3.
If OBJECT_ID('uf_demSNT_TrongDoan', 'p') is not null
		Drop function uf_demSNT_TrongDoan
go
Create function uf_demSNT_TrongDoan (@a int, @b int)
returns int as
Begin
	Declare @temp int, @dem int, @kq int
	set @temp = @b
	set @dem = 0

	while (@a >= @temp)
	Begin
		set @kq = dbo.uf_kiemTraNguyenTo(@temp)
		if @kq = 1
		begin
			set @dem = @dem + 1
			set @temp = @temp + 1
		end
		else
		begin
			set @temp = @temp + 1
		end	
	End
	
	return @dem
End
go
print dbo.uf_demSNT_TrongDoan(10, 1)
-----------------------------------------------

go

-----------------------------------------------
--Câu 5: Nhận vào @n và kiểm tra n có phải là số chẵn không
		--Trả về 1 nếu là số chẵn
		--Trả về -1 nếu là số lẻ
go
If OBJECT_ID('uf_kiemTraChanLe', 'p') is not null
		Drop function uf_kiemTraChanLe
go
Create function uf_kiemTraChanLe (@n int)
returns int as
Begin
	if (@n % 2 = 0)
	Begin
		return 1
	end	
	return 0
End
Go
print dbo.uf_kiemTraChanLe(7)
-----------------------------------------------

Go
-----------------------------------------------
--Câu 6: Nhận vào @a, @b và đếm các số nguyên tố không chẵn trong đoạn [@a, @b]. Lưu ý sử dụng lại stored procedure ở câu 3 và 5.
If OBJECT_ID('uf_demSNT_Le_TrongDoan', 'p') is not null
		Drop function uf_demSNT_Le_TrongDoan
go
Create function uf_demSNT_Le_TrongDoan (@a int, @b int)
returns int as
Begin
	Declare @temp int, @dem int, @check1 int, @check2 int
	set @temp = @b
	set @dem = 0

	while (@a >= @temp)
	begin
		set @check1 = dbo.uf_kiemTraNguyenTo(@temp)
		if (@check1 = 1)
		begin
			set @check2 = dbo.uf_kiemTraChanLe(@temp)
			if (@check2 = 0)
			begin
				set @dem = @dem + 1
				set @temp = @temp + 1
			end
			else
			begin
				set @temp = @temp + 1
			end
		end
		else
		begin
			set @temp = @temp + 1
		end
	end
	
	return @dem
End
go
print dbo.uf_demSNT_Le_TrongDoan(10, 1)
-----------------------------------------------


--FUNCTION SỬ DỤNG CSDL QLHV

go
-----------------------------------------------
--Câu 7: Nhận vào mã lớp, cho biết danh sách các học viên thuộc về lớp này.
If OBJECT_ID('uf_DSSV_Cau7', 'p') is not null
		Drop function uf_DSSV_Cau7
go
Create function uf_DSSV_Cau7 (@MaLop char(10))
returns table as
	return (Select hv.*
			From HOCVIEN hv
			Where hv.MaLop = @MaLop)
go
Select * From uf_DSSV_Cau7('LH000001')
-----------------------------------------------

go
-----------------------------------------------
--Câu 8: Nhận vào tên môn (tên môn là duy nhất), cho biết danh sách các giáo viên từng được phân công giảng dạy môn này.
If OBJECT_ID('uf_DSGV_Cau8', 'p') is not null
		Drop function uf_DSGV_Cau8
go
Create function uf_DSGV_Cau8 (@TenMon nvarchar(50))
returns table as
	return (Select gv.*
			From GIAOVIEN gv, PHANCONG pc, MONHOC mh
			Where pc.MaGV = gv.MaGV and pc.MaMH = mh.MaMonHoc
			and mh.TenMonHoc = @TenMon)
go
Select distinct * From uf_DSGV_Cau8(N'Khai thác dữ liệu')
-----------------------------------------------

go
-----------------------------------------------
--Câu 9: Nhập vào một mã giáo viên. Cho biết danh sách các giáo viên (mã gv, họ tên, tuổi) chịu sự quản lý của giáo viên này.
If OBJECT_ID('uf_DSGV_Cau9', 'p') is not null
		Drop function uf_DSGV_Cau9
go
Create function uf_DSGV_Cau9 (@MaGV char(10))
returns table as
	return (Select gv.MaGV, gv.TenGV, YEAR(GETDATE()) - YEAR(NgaySinh) as N'Tuổi'
			From GIAOVIEN gv
			Where gv.MaGVQuanLi = @MaGV)
go
Select * From uf_DSGV_Cau9('GV00002')
-----------------------------------------------

go
-----------------------------------------------
--Câu 10: Nhận vào giá trị giới tính, trả ra số lượng giáo viên có giới tính này.
If OBJECT_ID('uf_demGioiTinh_Cau10', 'p') is not null
		Drop function uf_demGioiTinh_Cau10
go
Create function uf_demGioiTinh_Cau10 (@GioiTinh nvarchar(10))
returns table
as
	return (Select COUNT(gv.GioiTinh) as N'Số lượng'
			From GIAOVIEN gv
			Where gv.GioiTinh = @GioiTinh)
go
Select * From uf_demGioiTinh_Cau10(N'Nam')
-----------------------------------------------

go
-----------------------------------------------
--Câu 11: Nhận vào mã lớp, trả ra họ tên giáo viên quản lý lớp.
If OBJECT_ID('uf_hoTenGVQL_Cau11', 'p') is not null
		Drop function uf_hoTenGVQL_Cau11
go
Create function uf_hoTenGVQL_Cau11 (@MaLop char(10))
returns table
as
	return (Select gv.TenGV as N'Tên GVQL Lớp'
			From GIAOVIEN gv, LOPHOC lh
			Where lh.GVQuanLi = gv.MaGV and lh.MaLop = @MaLop)
go
Select * From uf_hoTenGVQL_Cau11 ('LH000005')
-----------------------------------------------

go
-----------------------------------------------
--Câu 12: Nhận vào mã học viên, trả ra điểm trung bình (làm tròn 2 chữ số) của học viên này.
--Cách thức tính điểm trung bình tương tự câu 3, bài tập về nhà 3.
If OBJECT_ID('uf_tinhDTB_Cau12', 'p') is not null
		Drop function uf_tinhDTB_Cau12
go
Create function uf_tinhDTB_Cau12 (@MaHV char(10))
returns table
as
	return (Select round(AVG((kq.Diem*mh.SoChi)/(mh.SoChi)), 2) as N'Điểm Trung Bình'
			From HOCVIEN hv, KETQUA kq, MONHOC mh
			Where kq.MaHV = hv.MaHocVien and kq.MaMonHoc = mh.MaMonHoc
			and hv.MaHocVien = @MaHV and kq.LanThi >= ALL (Select kq1.LanThi
															From KETQUA kq1
															Where kq1.MaHV = hv.MaHocVien
															and kq1.MaMonHoc = mh.MaMonHoc))
go
Select * From uf_tinhDTB_Cau12 ('HV000002')
-----------------------------------------------

go
-----------------------------------------------
--Câu 13: Xuất danh sách họ tên các học viên cùng điểm trung bình của họ. Lưu ý: sử dụng lại
--function ở câu 5 để tính điểm trung bình cho học viên.
If OBJECT_ID('uf_tinhDTB_Cau13', 'p') is not null
		Drop function uf_tinhDTB_Cau13
go
Create function uf_tinhDTB_Cau13()
returns table
as
	return (Select hv.TenHocVien, round(AVG((kq.Diem*mh.SoChi)/(mh.SoChi)), 2) as N'Điểm Trung Bình'
			From HOCVIEN hv, KETQUA kq, MONHOC mh
			Where kq.MaHV = hv.MaHocVien and kq.MaMonHoc = mh.MaMonHoc
			and kq.LanThi >= ALL (Select kq1.LanThi
									From KETQUA kq1
									Where kq1.MaHV = hv.MaHocVien and kq1.MaMonHoc = mh.MaMonHoc)
			Group by hv.TenHocVien)
go
Select * From uf_tinhDTB_Cau13()
-----------------------------------------------