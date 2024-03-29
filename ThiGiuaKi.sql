--Câu 1
--Input:MaDN, NgayNhap, DaiLy,SoLuong,MaBao, DonGia
--Output: 0 : Nếu thêm thành công. Xuất thông tin nhập hàng vừa thêm
--1 : Nếu thêm không thành công
--Nội dung:
--B1: Kiểm tra MaDN tồn tại chưa
--o Nếu đã tồn tại  Phát sinh mã đơn nhập mới theo định dạng DNxx (Chèn vào vị trí trống
--dầu tiên)
--B2: Kiểm tra ngày nhập phải trong tháng hiện hành
--o Nếu không truyền hoặc vi phạm điều kiện thì gán ngày nhập là ngày hiện hành.
--B3: Kiểm tra số lượng > 50
--o Nếu số lượng không được truyền hoặc không hợp lệ thì gán số lượng = 50.
--B4: Nếu mã báo != null, kiểm tra đơn giá trong khoản DonGia báo ± 10% DonGia báo.
--B5: Nếu mã báo = null, nhập tất cả báo thuộc đơn hàng có tình trạng hoạt động.
--B6: Thêm DONNHAP và CT_DONNHAP. Cập nhật số lượng tồn
If OBJECT_ID('usp_Cau1', 'p') is not null
		Drop proc usp_Cau1
go
Create proc usp_Cau1 @MaDN char(4),
					 @NgayNhap datetime,
					 @DaiLy char(4),
					 @SoLuong int,
					 @MaBao char(4),
					 @DonGia float
as
Begin
	if exists (Select * From DON_NHAP Where MaDN = @MaDN)
	Begin
		return 1
	End
End

go
--Câu 2
--Viết thủ tục truyền vào ngày BD, ngày KT. Hãy thống kê danh sách báo của các đơn hàng
--còn hoạt động trong khoảng thời gian trên theo định dạng sau
--Ngày BD: [gtri]
--Ngày KT: [gtri]
--Số khách hàng: [gtri]
--Tổng số báo: [gtri]
--STT Tên KH Số lượng mua Đơn Giá Thành Tiền
--------------------------------------------------------------------------------------------
--[gtri] [gtri] [gtri] [gtri] [gtri]
--------------------------------------------------------------------------------------------
If OBJECT_ID('usp_Cau2', 'p') is not null
		Drop proc usp_Cau2
Go
Create
--alter
proc usp_Cau2 @NgayBD datetime,
					@NgayKT datetime
as
Begin
	Declare @SoKH int = (Select COUNT(d.MaKH)
							From CT_DONHANG ct, DON_HANG d
							Where ct.MaDH = d.MaDH and d.TinhTrang = 'HD'
							and d.NgayLap between @NgayBD and @NgayKT)
	Declare @TongBao int = (Select count(ct.MaBao)
							From CT_DONHANG ct, DON_HANG d, BAO b
							Where ct.MaBao = b.MaBao and ct.MaDH = d.MaDH and d.TinhTrang = 'HD'
							and d.NgayLap between @NgayBD and @NgayKT)
	print N'Ngày BD: ' + cast(@NgayBD as char(10))
	print N'Ngày KT: ' + cast(@NgayKT as char(10))
	print N'Số khách hàng: ' + ltrim(str(@SoKH))
	print N'Tổng số báo: ' + ltrim(str(@TongBao))
							
	Declare @TenKH nvarchar(100), @SoLuongMua int, @DonGia float, @ThanhTien float, @STT int = 1
	Declare cur_DS cursor for
		(Select k.HoTen, ct.SoLuong, ct.DonGia, (ct.SoLuong * ct.DonGia)
		From KHACH_HANG k, CT_DONHANG ct, DON_HANG d, BAO b
		Where ct.MaBao = b.MaBao and ct.MaDH = d.MaDH and d.MaKH = k.MaKH and d.TinhTrang = 'HD'
		and d.NgayLap between @NgayBD and @NgayKT)
	Open cur_DS
	fetch next from cur_DS into @TenKH, @SoLuongMua, @DonGia, @ThanhTien
	print 'STT' + space(3) + N'Tên KH' + space(15) + N'Số lượng mua' + space(4) + N'Đơn giá' + space(4) + N'Thành Tiền'
	print '-----------------------------------------------------------------------'
	while (@@FETCH_STATUS = 0)
	Begin
		print ltrim(str(@stt)) + space(3) + @TenKH + space(15) + ltrim(str(@SoLuongMua)) + space(8) + ltrim(str(@DonGia)) + space(8) + ltrim(str(@ThanhTien))
		fetch next from cur_DS into @TenKH, @SoLuongMua, @DonGia, @ThanhTien
		set @STT = @STT + 1
	End
	print '-----------------------------------------------------------------------'
	close cur_DS
	deallocate cur_DS
End
Go
Exec usp_Cau2 '2009-11-12 00:00:00.000', '2010-12-12 00:00:00.000'