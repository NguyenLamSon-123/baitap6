# baitap6
bài tập số 6 mssv k225480106076 Nguyễn Lam Sơn môn Hệ Quản Trị Cơ Sở Dữ LIệu 
Yêu cầu bài tập: 
Cho file sv_tnut.sql (1.6MB)
1. Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server của em
2. dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này)
3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
6. nhập sql để tìm xem có những sv nào trùng tên với em?
7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)

DEADLINE: 23H59:59 NGÀY 25/4/2025
# bài làm 
các bước để import được dữ liệu trong sv_tnut.sql vào sql server 
1. tạo database có tên là sv_tnut 
![image](https://github.com/user-attachments/assets/8f72cfc5-2bc7-491f-8ab7-51c0f35f785d)
sau đó mở file sv_tnut đã tải trước đó 
![image](https://github.com/user-attachments/assets/284f70ab-27a3-4d43-8afd-5c8616eb650b)
![image](https://github.com/user-attachments/assets/3fad0ee9-43e5-4929-a9e5-d01fd5c6d6c9)
![image](https://github.com/user-attachments/assets/1829d015-6598-4c6f-b225-c46fc4ce7b79)
sau khi mở file sv_tnut xong ta ấn chuột phải vào dbo.sv chọn edit top 200 
![image](https://github.com/user-attachments/assets/38df7500-4b08-4ca9-bc19-f14ba2a2229a)
lúc này sẽ in ra danh sách tất cả các sinh viên
![image](https://github.com/user-attachments/assets/de9dc413-1ef2-45c0-b3d2-73247c20e18d)
nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
vì ngày sinh là kiểu date nên sẽ so sánh trực tiếp với định dạng ngày tháng năm sinh
trong bảng sv_tnut để tránh bị nhầm lẫn định dạng 
![image](https://github.com/user-attachments/assets/b4ef9a8d-5033-4b61-bcad-029ab4f88b2a)
nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
-dùng hàm DAY và MONTH để tách ngày tháng từ cột NgaySinh
-so sánh riêng lẻ để tìm các sinh viên có cùng ngày và tháng 
![image](https://github.com/user-attachments/assets/986107c5-1f05-444d-a004-b2735d5df825)
nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
cũng tương tự như vậy dùng MONTH và YEAR để lấy tháng và năm từ ngày sinh, cùng
tháng cùng năm nhưng ngày có thể khác 
![image](https://github.com/user-attachments/assets/32b747aa-9867-4e56-9632-94548bcdd2e7)
nhập sql để tìm xem có những sv nào trùng tên với em?
vì HoTen chứa cả họ, tên đệm và tên ta cần tách phần tên cuối cùng 
![image](https://github.com/user-attachments/assets/4f5747d3-2d71-4420-96bf-da5761bcb1cb)
nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
tách phần bên trái của tên( họ và tên đệm) 
![image](https://github.com/user-attachments/assets/8126c058-01d9-4b5c-aff2-ed3141a2ef7a)
nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em
so sánh từng ký tự giữa sdt của mình với từng sinh viên khác 
![image](https://github.com/user-attachments/assets/34e311f1-dfcf-4ff9-a878-6e5b23c38dad)
LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT
sắp xếp theo tên trước rồi mới đến họ đệm 
![image](https://github.com/user-attachments/assets/b18a9ee4-1f09-4e4f-90c6-cc2b420ba02d)
LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV
vì không có cột giới tính nên không thể lọc chính xác 100%, lọc theo đúng mã Nghành Là
KMT và tên của sinh viên nữ 
![image](https://github.com/user-attachments/assets/60022bf7-c77f-4350-9d94-0f2d05792566)
























