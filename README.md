# WebBanHangASP

Step để chạy dự án:
1. Chạy file script.sql trong SQL Server Management
2. Mở dự án trong Visual Studio
3. Đổi DefaultConnection tương ứng trong appsettings.json


Features:
Trang chủ gồm: phần danh sách phân loại sản phẩm (category), 2 nhóm sản phẩm vd: sản phẩm mới nhất, sản phẩm khuyến mãi
Trang hiển thị các sản phẩm theo 1 danh mục 
Trang xem chi tiết 1 sản phẩm
Trang đăng kí, đăng nhập (dùng lại của Identity)
Trang quản lý danh mục gồm:hiển thị danh sách danh mục, thêm, xóa, sửa danh mục 
Trang quản lý sản phẩm gồm: hiển thị danh sách sản phẩm, thêm, xóa, sửa sản phẩm (Truy cập bằng cách thay URL của dự án sang /Admin/Product hoặc /Admin/Category)
