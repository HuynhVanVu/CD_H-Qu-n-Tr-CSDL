
-----------------------------------------
--Phần Bài Tập Truy Vấn Procedure Đơn Giản
-----------------------------------------


--Không Sử Dụng Cơ Sở Dữ Liệu

go
--Cau 1
Create procedure usp_InTen	@ten nvarchar(30)
as
Begin
	print N'Xin chào' + @ten
end
go
Exec usp_InTen N' Huỳnh Văn Vũ'

go

--Cau 2
If OBJECT_ID('usp_TongPrint', 'p') is not null
	Drop proc usp_TongPrint
go
Create proc usp_TongPrint @a int, @b int
as
begin	
	Declare @tong int
	set @tong = @a + @b
	Print N'Tổng = ' + cast(@tong as char(10))
end
go
Declare @tong int
Exec @tong = usp_TongPrint 7, 7

--Cau 3
go
Create procedure usp_TongOutPut @a float,
							@b float,
							@s float output
as
	set @s = @a + @b
go

Declare @s float
Set @s = 0
Execute usp_TongOutPut 6.7, 7.6, @s output
Select @s

 go
--Cau 4
If OBJECT_ID('usp_TongReturn', 'p') is not null
	Drop proc usp_TongReturn
go
Create proc usp_TongReturn @a int, @b int
as
begin	
	return @a + @b
end
go
Declare @s int
Exec @s = usp_TongReturn 7, 7
print @s

go
--Cau 5
If OBJECT_ID('usp_TongTrongDoan', 'p') is not null
	Drop proc usp_TongTrongDoan
go
Create proc usp_TongTrongDoan @a int, @b int, @s int output
as
Declare @temp int
set @temp = @b

begin
	
	if (@a > @b)
	begin
	set @s = 0
		while (@a >= @temp)
		begin
			set @s = @s + @temp
			set @temp = @temp + 1
		end
		
	end
	
	if (@a = @b)
	begin
		set @s = 0
	end

	if (@a < @b)
	begin
		set @s = -1
	end
end

go

--goi thuc thi
Declare @tong int
Exec usp_TongTrongDoan 7, 3, @tong output
Print N'Tổng: ' + cast(@tong as char(10))

--Cau 6
If OBJECT_ID('usp_TongTrongDoanReturn', 'p') is not null
	Drop proc usp_TongTrongDoanReturn
go
Create proc usp_TongTrongDoanReturn @a int, @b int
as
Declare @s int, @temp int
set @temp = @b

begin
	
	if (@a > @b)
	begin
	set @s = 0
		while (@a >= @temp)
		begin
			set @s = @s + @temp
			set @temp = @temp + 1
		end
		return @s
	end
	
	if (@a = @b)
	begin
		return 0
	end

	if (@a < @b)
	begin
		return -1
	end
end

go

--goi thuc thi
Declare @tong int
Exec @tong = usp_TongTrongDoanReturn 7, 3
Print @tong

--Bai 7
If OBJECT_ID('usp_KiemTraNguyenTo', 'p') is not null
	Drop proc usp_KiemTraNguyenTo
go
Create proc usp_KiemTraNguyenTo @n int, @KetQua int output
as
Declare @a int
set @a = 3
set @KetQua = 0
if (@n = 2)
begin
	set @KetQua = 1
end

else
	while (@a <= @n / 2)
	begin
		if (@n % @a = 0)
		begin	
			set @KetQua = -1;
		end
		set @KetQua = 1
	end

go
Declare @KetQua int
Exec usp_KiemTraNguyenTo 11, @KetQua output
if @KetQua = 1
begin
	Print N'Là Số Nguyên Tố'
end
else
begin
Print N'Không Là Số Nguyên Tố'
end



--Dùng CSDL QuanLiHocVien
go
--12 Cho biết danh sách các học viên thuộc về lớp do giáo viên “GV00001” quản lý.
If OBJECT_ID('usp_Cau12_DSHocVienGVQuanLy', 'p') is not null
	Drop proc usp_Cau12_DSHocVienGVQuanLy	
go
Create proc usp_Cau12_DSHocVienGVQuanLy
as
begin
	Select HV.*, LH.MaLop, LH.GVQuanLi
	From HOCVIEN HV, LOPHOC LH, GIAOVIEN GV
	Where HV.MaLop = LH.MaLop and LH.GVQuanLi = GV.MaGVQuanLi
	and GV.MaGVQuanLi = 'GV00001'
end
go
Exec usp_Cau12_DSHocVienGVQuanLy

go
--13 Nhận vào một mã lớp, cho biết danh sách các học viên thuộc lớp này.

If OBJECT_ID('usp_Cau13_DSHocVien', 'p') is not null
	Drop proc usp_Cau13_DSHocVien	
go
Create proc usp_Cau13_DSHocVien
as
begin
	Select HV.*
	From HOCVIEN HV
	Where HV.MaLop = 'LH000004'
end
go
Exec usp_Cau13_DSHocVien


go
--Cau 14
If OBJECT_ID('usp_Cau14_SiSo_GVQL_LT', 'p') is not null
	Drop proc usp_Cau14_SiSo_GVQL_LT	
go
Create proc usp_Cau14_SiSo_GVQL_LT @MaLop char(10),
								@KetQua int output
as
begin
	Select LH.SiSo, LH.GVQuanLi, GV.TenGV as N' Tên GVQL Lớp',
	 HV.TenHocVien as N'Tên Lớp Trưởng'
	From LOPHOC LH, GIAOVIEN GV, HOCVIEN HV
	Where LH.GVQuanLi = GV.MaGV and 
	HV.MaHocVien = LH.LopTruong and LH.MaLop = 'LH000004'
end
go
Declare @KetQua int
Exec usp_Cau14_SiSo_GVQL_LT 'LH000004', @KetQua output


go
--Cau 15
If OBJECT_ID('usp_Cau15_XuatGVQuanLi', 'p') is not null
	Drop proc usp_Cau15_XuatGVQuanLi
go
Create proc usp_Cau15_XuatGVQuanLi @MaLop char(10)
as
begin
	Select GV.MaGV, GV.TenGV
	From GIAOVIEN GV, LOPHOC LH
	Where LH.GVQuanLi = GV.MaGV and LH.MaLop = 'LH000004'
end
go
Declare @KetQua char(10)
Exec @KetQua =  usp_Cau15_XuatGVQuanLi 'LH000004'
Print @KetQua


go
--Cau 16

If OBJECT_ID('usp_Cau16_HoTenHocVienLonTuoiNhat', 'p') is not null
	Drop proc usp_Cau16_HoTenHocVienLonTuoiNhat
go
Create proc usp_Cau16_HoTenHocVienLonTuoiNhat @MaLop char(10)
as
begin
	Select HV.MaHocVien, HV.TenHocVien
	From HOCVIEN HV
	Where HV.MaLop = 'LH000001' and (year(GETDATE()) - year(NgaySinh)) = (
							SELECT  max (year(GETDATE()) - year(HV1.NgaySinh))
							FROM HOCVIEN HV1
							Where HV1.MaLop = 'LH000001')
end
go
Exec usp_Cau16_HoTenHocVienLonTuoiNhat 'LH000001'

go
--Cau 17
If OBJECT_ID('usp_Cau17_DemGioiTinh', 'p') is not null
	Drop proc usp_Cau17_DemGioiTinh
go
Create proc usp_Cau17_DemGioiTinh @GioiTinh nvarchar(50),
									@Dem int output
as
begin
	set @Dem = (Select COUNT(GV.MaGV) as N'Số Lượng'
				From GIAOVIEN GV
				Where GV.GioiTinh = N'Nữ')
end
go
Declare @Dem int
exec usp_Cau17_DemGioiTinh N'Nữ', @Dem output
Print N'Số lượng GV có giới tính Nữ là: ' + cast(@dem as char(3))

go
--Cau 18
If OBJECT_ID('usp_Cau18_DSGVPCGiangDay', 'p') is not null
	Drop proc usp_Cau18_DSGVPCGiangDay
go
Create proc usp_Cau18_DSGVPCGiangDay @TenMonHoc nvarchar(50)
as
begin
	Select GV.*
	From MONHOC MH, GIAOVIEN GV, GIAOVIEN_DAY_MONHOC GVDMH
	Where GVDMH.MaGV = GV.MaGV and GVDMH.MaMH = MH.MaMonHoc
	and MH.TenMonHoc = N'Cơ sở dữ liệu'
end
go
Exec usp_Cau18_DSGVPCGiangDay N'Cở sở dữ liệu'