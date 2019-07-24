--Cau 1: Thêm cột SoMonDaGD (số môn đã giảng dạy) vào bảng giáo viên. Quy định giá trị
--trong cột này phải tương ứng với số môn mà giáo viên đã được phân công giảng dạy.
/*
---------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update	|
---------------------------------------------------------
	GIAOVIEN	|	  +	 	|	-		|	+(SoMonDaGD)|
---------------------------------------------------------
	PHANCONG	|	  +	 	|	+		|	+(MaGV)		|
---------------------------------------------------------
*/
Alter table GIAOVIEN
add SoMonDaGD int
go
--TH thêm cho bảng PHÂN CÔNG
Create trigger trg_ThemPhanCong on PHANCONG
For insert as
Begin
	Declare cur cursor for (Select i.MaGV From inserted i)
	Open cur
	Declare @MaGV char(10), @SoMonDaDay int
	Fetch next from cur into @MaGV
	While @@FETCH_STATUS = 0
	Begin
		Set @SoMonDaDay = (Select COUNT(*)
							From PHANCONG pc
							Where pc.MaGV = @MaGV)
		Update GIAOVIEN
		set SoMonDaGD = @SoMonDaDay
		Where MaGV = @MaGV
		Fetch next from cur into @MaGV
	End
	Close cur
	Deallocate cur
End
go

/*
select *
from GIAOVIEN

select *
From PHANCONG

insert into PHANCONG 
values ('GV00001', 'MH00008', 'LH000002')
*/

/*
--Cau 2: Thêm cột SoMonCoTheGD (số môn có khả năng giảng dạy) vào bảng giáo viên.
Quy định giá trị trong cột này phải tương ứng với số môn mà giáo viên có khả năng
giảng dạy

---------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update	|
---------------------------------------------------------
	GIAOVIEN	|	  +	 	|	-		|	+(SoMonCTGD)|
---------------------------------------------------------
	GV_DAY_MH	|	  +	 	|	+		|	+(MaGV)		|
---------------------------------------------------------
*/
Alter table GIAOVIEN
add SoMonCTGD int
go
--TH them cho bang GV_DAY_MH
Create trigger trg_SoMonCTGD on GIAOVIEN_DAY_MONHOC
For insert as
Begin
	Declare cur cursor for (Select distinct i.MaGV From inserted i)
	Open cur
	Declare @MaGV char(10), @SLMonCTDay int
	fetch next from cur into @MaGV
	while @@FETCH_STATUS = 0
	Begin
		set @SLMonCTDay = (select count(*)
							From GIAOVIEN_DAY_MONHOC g
							where g.MaGV = @MaGV)
		update GIAOVIEN
		set SoMonCTGD = @SLMonCTDay
		where MaGV = @MaGV
		fetch next from cur into @MaGV
	End
	Close cur
	Deallocate cur
End
go

--TH xoa cho bang GV_DAY_MH
Create trigger trg1_SoMonCTGD on GIAOVIEN_DAY_MONHOC
For delete as
Begin
	Declare cur cursor for (Select distinct i.MaGV From deleted i)
	Open cur
	Declare @MaGV char(10), @SLMonCTDay int
	fetch next from cur into @MaGV
	while @@FETCH_STATUS = 0
	Begin
		set @SLMonCTDay = (select count(*)
							From GIAOVIEN_DAY_MONHOC g
							where g.MaGV = @MaGV)
		update GIAOVIEN
		set SoMonCTGD = @SLMonCTDay
		where MaGV = @MaGV
		fetch next from cur into @MaGV
	End
	Close cur
	Deallocate cur
End
go



/*
delete from GIAOVIEN_DAY_MONHOC
where MaGV = 'GV00001' 

insert into GIAOVIEN_DAY_MONHOC
values ('GV00005', 'MH00004', 8, null),
		('GV00005', 'MH00005', 8, null)
		
select *
From GIAOVIEN

select *
From GIAOVIEN_DAY_MONHOC
*/

--Câu 3: Thêm cột số tín chỉ đạt được vào bảng học viên. Quy định giá trị trong cột này phải
--tương ứng với số tín chỉ mà học viên đã đạt được.
/*
---------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update	|
---------------------------------------------------------
	HOCVIEN		|	  +	 	|	-		|	+(SoMonCTGD)|
---------------------------------------------------------
	MONHOC		|	  +	 	|	+		|	+(MaMH)		|
---------------------------------------------------------
	KETQUA		|	  +	 	|	+		|	+(MaGV, MaMH)|
---------------------------------------------------------
*/
go
Alter table HOCVIEN
add TinChiDD int
go
--TH them cho bang GV_DAY_MH
Create trigger TinChiDD on KETQUA
For insert as
Begin
	Declare cur cursor for (Select distinct i.MaHV From inserted i)
	Open cur
	Declare @MaHV char(10), @SoTinChiDD int
	fetch next from cur into @MaHV
	while @@FETCH_STATUS = 0
	Begin
		set @SoTinChiDD = (select sum( distinct mh.SoChi) 
							from HOCVIEN i, MONHOC mh, inserted kq 
							where mh.MaMonHoc = kq.MaMonHoc and kq.Diem > 5 
							and i.MaHocVien = kq.MaHV and i.MaHocVien = @MaHV)
		update HOCVIEN
		set TinChiDD = @SoTinChiDD
		where MaHocVien = @MaHV
		fetch next from cur into @MaHV
	End
	Close cur
	Deallocate cur
End
go

/*
--Câu 4: Thêm cột điểm trung bình vào bảng học viên.
Quy định giá trị trong cột này phải tương ứng với
điểm trung bình của học viên

---------------------------------------------------------
	Bảng		|   Insert	|	Delete  |		Update	|
---------------------------------------------------------
	HOCVIEN		|	  +	 	|	-		|	+(DTB)|
---------------------------------------------------------
	MONHOC		|	  +	 	|	+		|	+(MaMH)		|
---------------------------------------------------------
	KETQUA		|	  +	 	|	+		|	+(MaGV, MaMH)|
---------------------------------------------------------
*/
go
Alter table HOCVIEN
add DTB int
go
Create trigger trg_DTB on KETQUA
For insert as
Begin
	Declare cur cursor for (Select distinct i.MaHV From inserted i)
	Open cur
	Declare @MaHV char(10), @DTB int
	fetch next from cur into @MaHV
	while @@FETCH_STATUS = 0
	Begin
		set @DTB = (Select round(SUM(mh.SoChi * kq.Diem) / SUM(mh.SoChi), 2)
					From HOCVIEN hv, KETQUA kq, MONHOC mh
					Where kq.MaHV = hv.MaHocVien and kq.MaMonHoc = mh.MaMonHoc and hv.MaHocVien = @MaHV
					and kq.LanThi >= ALL (Select kq1.LanThi
											From KETQUA kq1
											Where kq1.MaHV = kq.MaHV and kq1.MaMonHoc = kq.MaMonHoc))
		update HOCVIEN
		set DTB = @DTB
		where MaHocVien = @MaHV
		fetch next from cur into @MaHV
	End
	Close cur
	Deallocate cur
End
go



/*
go
select * From HOCVIEN

insert into KETQUA
values ('HV000002', 'MH00002', 1, 7)

select *
from KETQUA
*/