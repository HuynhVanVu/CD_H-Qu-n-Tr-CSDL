
/*MSSV: 1560689
Họ Tên: Huỳnh Văn Vũ
Lớp: 15CK5
Ca thực hành: sáng thứ 4*/


/*
Câu 1: Cột tình trạng trong bảng học viên nếu có giá trị chỉ có thể là ‘đang học’, ‘đã tốt nghiệp’
hoặc ‘buộc thôi học’.
-------------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update		|
-------------------------------------------------------------
	HOCVIEN		|	  +	 	|	 -		|	+ (TinhTrang)	|
-------------------------------------------------------------
*/
Create trigger trg_TinhTrang on HOCVIEN
For insert, update as
begin
	If exists (Select *
				From inserted i
				Where i.TinhTrang not in (N'đang học', N'đã tốt nghiệp', N'buộc thôi học'))
	begin
		raiserror (N'Cột tình trạng phải là đang học, đã tốt nghiệp hoặc buộc thôi học', 15, 1)
		rollback
	end
end
go

/*
Câu 2 : Cột giới tính trong bảng giáo viên nếu có giá trị chỉ có thể là ‘nam’ hoặc ‘nữ.
------------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update		|
------------------------------------------------------------
	GiaoVien	|	  +	 	|	 -		| + GioiTinh		|
-------------------------------------------------------------
*/
Create trigger trg_GioiTinh on GIAOVIEN
For insert, update as
Begin
	If exists (Select *
				From inserted i
				Where i.GioiTinh not in (N'Nam', N'Nữ'))
	begin
		raiserror (N'Giới tính phải Nam hoặc Nữ', 15, 1)
		rollback
	end
End
go

/*
Câu 3:Khi thêm một giáo viên mới vào CSDL, phải đảm bảo giáo viên nữ <= 55 tuổi và giáo viên nam <= 60 tuổi.
----------------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update			|
----------------------------------------------------------------
	GiaoVien	|	  +	 	|	 -		| + GioiTinh, NgaySinh	|
----------------------------------------------------------------
*/
If OBJECT_ID('trg_ThemGV') is not null
		Drop trigger trg_ThemGV
go
Create trigger trg_ThemGV on GIAOVIEN
For insert, update as
begin
	Declare @Tuoi int, @GioiTinh nchar(10)
	set @Tuoi = Year(GETDATE()) - Year((Select i.NgaySinh From inserted i))
	set @GioiTinh = (Select i.GioiTinh From inserted i)
	if (@GioiTinh = N'Nam' and @Tuoi > 60) or (@GioiTinh = N'Nữ' and @Tuoi > 55)
	Begin
		Raiserror (N'GV Nam phải <= 60 tuổi và GV Nữ phải <= 55 tuổi', 15, 1)
		Rollback
	End
end

go
----c2
--Create trigger trg_Cau1_Cach2 on GIAOVIEN
--For insert, update as
--begin
--	if exists (Select *
--				From inserted
--				where (YEAR(GETDATE()) - YEAR(NgaySinh) > 55 and GioiTinh = N'Nữ') 
--				or (YEAR(GETDATE()) - YEAR(NgaySinh) > 60 and GioiTinh = 'Nam' ))
--	begin
--		Raiserror (N'GV Nam phải <= 60 tuổi và GV nữ phải <=55', 0, 1)
--		Rollback
--	end
--end

--go

/*
Câu 4: Học viên phải tối thiểu 18 tuồi
---------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update	|
---------------------------------------------------------
	HOCVIEN		|	  +	 	|	 -		| + NgaySinh	|
---------------------------------------------------------
*/
Create trigger trg_TuoiHV on HOCVIEN
For insert as
Begin
	Declare @Tuoi int
	set @Tuoi = YEAR(GETDATE()) - YEAR((Select i.NgaySinh From inserted i))
	if @Tuoi < 18
	Begin
		raiserror (N'Học Viên phải tối thiểu 18 tuổi', 15, 1)
		rollback
	End
End
go

/*
Câu 5: Năm kết thúc của 1 lớp học phải sau năm bắt đầu 4 năm.
---------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update	|
---------------------------------------------------------
	LOPHOC		|	  +	 	|	 -		| +  NamKT		|
---------------------------------------------------------
*/
Create trigger trg_NamKTSau4Nam on LOPHOC
For insert as
Begin
	Declare @NamBD int, @NamKT int, @SoNam int
	set @NamBD = YEAR((Select i.NamBatDau From inserted i))
	set @NamKT = YEAR((Select i.NamKetThuc From inserted i))
	set @SoNam = @NamKT - @NamBD
	if (@SoNam < 4)
	begin
		raiserror (N'Năm kết thúc phải lớn hơn năm bắt đầu 4 năm', 15, 1)
		rollback
	end
End
go

/*
Câu 6: Một lớp phải có tối thiểu 1 học viên.
---------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update	|
---------------------------------------------------------
	LOPHOC		|	  -	 	|	 -		| +  SiSo		|
---------------------------------------------------------
*/
Create trigger trg_ToiThieuMotHV on LOPHOC
For update as
Begin
	If (Select i.SiSo From inserted i) <= 0
	Begin
		raiserror (N'Lớp học phải tối thiểu 1 học viên', 15, 1)
		rollback
	end
End
go

/*
Câu 7:Một giáo viên phải có khả năng giảng dạy ít nhất một môn.
--------------------------------------------------------
	Bảng		|   Insert	|	Delete  |	Update		|
---------------------------------------------------------
	GiaoVien	|	  -	 	|	 -		|		-		|
---------------------------------------------------------
	GV_Day_MH	|	  -	 	|	 +		|		+(MaGV)	|
---------------------------------------------------------
*/
Create trigger trg_Cau7 on GIAOVIEN_DAY_MONHOC
For delete, update as
begin
	if not exists (Select * From deleted d, GIAOVIEN_DAY_MONHOC gvmh Where gvmh.MaGV = d.MaGV)
	begin
		raiserror (N'Giáo viên phải có khả năng dạy ít nhất 1 môn', 15, 1)
		rollback
	end
end
go

/*
Câu 8: Không được xóa các học viên có tình trạng là đang học.
---------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update	|
---------------------------------------------------------
	HOCVIEN		|	  -	 	|+(TinhTrang)|		-		|
---------------------------------------------------------
*/
Create trigger trg_TinhTrangDangHoc on HOCVIEN
For delete as
Begin
	Declare @TinhTrang nvarchar(20)
	set @TinhTrang = (Select d.TinhTrang From deleted d)
	if (@TinhTrang = N'đang học')
	begin
		raiserror (N'Không được xóa học viên có tình trạng là đang học', 15, 1)
		rollback
	end
End
go

/*
Câu 9: Không được xóa các môn học có học viên theo học.
---------------------------------------------------------
	Bảng		|   Insert	|	Delete   |		Update	|
---------------------------------------------------------
	HOCVIEN		|	  -	 	|	+(MaHV	)|		-		|
---------------------------------------------------------
*/
go
Create trigger trg_KhongXoaMonHocCoHVTheoHoc on HOCVIEN
For Delete as
Begin
	if exists (Select k.MaMonHoc
				From deleted d, KETQUA k
				Where k.MaHV = d.MaHocVien and d.MaHocVien = (select hv.MaHocVien From HOCVIEN hv))
	Begin
		raiserror (N'Không được xóa môn học có học viên theo học', 0, 1)
		rollback
	End
End
go

/*
Câu 10: Thêm cột SoMonDaGD (số môn đã giảng dạy) vào bảng giáo viên. Quy định giá trị
trong cột này phải tương ứng với số môn mà giáo viên đã được phân công giảng dạy.
---------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update	|
---------------------------------------------------------
	GIAOVIEN	|	  +	 	|	-		|	+(SoMonDaGD)|
---------------------------------------------------------
	PHANCONG	|	  +	 	|	+		|	+(MaGV)	|
---------------------------------------------------------

*/
go
alter table GIAOVIEN
add SoMonDaDay int
go
Create trigger trg_ThemCotSoMonDaDay on GIAOVIEN
For insert, update as
Begin
	Declare @SoMonDaGD int
	set @SoMonDaGD = (Select COUNT(distinct p.MaMH)
					From PHANCONG p
					Where p.MaGV = (Select i.MaGV From inserted i)
					)
	if ((select i.SoMonDaDay from inserted i)!= @SoMonDaGD)
	Begin
		raiserror (N'Giá trị trong cột phải tương ứng với số môn đã dạy', 0, 1)
		rollback
	End
End
go

/*
Câu 11: Thêm cột SoMonCoTheGD (số môn có khả năng giảng dạy) vào bảng giáo viên. Quy
định giá trị trong cột này phải tương ứng với số môn mà giáo viên có khả năng giảng dạy.
---------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update	|
---------------------------------------------------------
	GIAOVIEN	|	  +	 	|	-		|		+(SoMonCoTheDay)	|
---------------------------------------------------------
	GV_DAY_MH	|	  +	 	|	+		|		+(MaGV)	|
---------------------------------------------------------
*/
go
alter table GIAOVIEN
add SoMonCoTheGD int
go
Create trigger trg_SoMonCoTheGD on GIAOVIEN
for insert, update as
Begin
	Declare @SoMonCoTheDay int
	set @SoMonCoTheDay = (Select COUNT(g.MaGV)
							From GIAOVIEN_DAY_MONHOC g
							Where g.MaGV = (Select i.MaGV From inserted i))
	if ((Select i.SoMonDaDay From inserted i) != @SoMonCoTheDay)
	begin
		raiserror (N'Giá trị trong cột  này phải tương ứng với số môn mà giáo viên có thể dạy', 0, 1)
		rollback
	end
End

/*
Câu 12: Thêm cột số tín chỉ đạt được vào bảng học viên. Quy định giá trị trong cột này phải
tương ứng với số tín chỉ mà học viên đã đạt được.
---------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update	|
---------------------------------------------------------
	HOCVIEN		|	  +	 	|	-		|	+(MaHV)		|
---------------------------------------------------------
*/
go
alter table HOCVIEN
add SoTinChi int
go
Create trigger trg_SoTinChi on HOCVIEN
for insert, update as
Begin
	if(update(SoTinChi))
	begin
		if exists (select *
					from inserted i, MONHOC mh, KETQUA kq
					where i.MaHocVien = kq.MaHV and i.SoTinChi <> (select sum(mh.SoChi) 
																			from inserted i, MONHOC mh, KETQUA kq 
																			where mh.MaMonHoc = kq.MaMonHoc and i.MaHocVien = kq.MaHV)
																			group by i.MaHocVien)
		begin
			raiserror(N'Tổng số tín chỉ đã đạt chưa chính xác.', 16, 1)
			rollback
		end
	end
End

/*
Câu 13: Thêm cột điểm trung bình vào bảng học viên. Quy định giá trị trong cột này phải tương
ứng với điểm trung bình của học viên.
---------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update	|
---------------------------------------------------------
	HOCVIEN		|	  +	 	|	-		|	+(MaHV)		|
---------------------------------------------------------
*/
go
alter table HOCVIEN
add DTB int
go
Create trigger trg_DTB on HOCVIEN
for insert, update as
Begin
	if (update(DiemTB))
	begin
		if exists (select * 
					from MONHOC mh, KETQUA kq, inserted i 
					where kq.MaMonHoc = mh.MaMonHoc and i.DiemTB != sum(kq.Diem*mh.SoChi)/sum(mh.SoChi))
		begin
			raiserror(N'Điểm trung bình không hợp lệ.', 25, 1)
		end
	end
End