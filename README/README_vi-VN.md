**Phần mềm Gỡ bỏ Microsoft Edge và đề xuất Hộp tìm kiếm của GWE** là một công cụ dễ dàng để xóa Microsoft Edge dựa trên Chromium của Microsoft, cũng như bật / tắt một số tùy chọn liên quan đến Edge.

Tệp README có các thứ tiếng: [English (US)](https://github.com/gamingwithevets/msedgeremover/blob/main/README.md)&nbsp; [Deutsch (Deutschland)](https://github.com/gamingwithevets/msedgeremover/blob/main/README/README_de-DE.md)

# Cú pháp
## v1.1.0+
```
msedgeremover [/?] [/debug] [/echoon] [/langXXXX]
```
## v1.0.0
```
msedgeremover [/?] [/debug] [/echoon] [/langXX]
```
## Thông số
LƯU Ý: v1.0.0 không hỗ trợ các tham số chữ thường (ngoại trừ `/debug`).
| Thông số | Mô tả |
|--|--|
| `/?` | Hiển thị trợ giúp. |
| `/debug` | Bật Chế độ gỡ lỗi. Hiện tại nó không giúp ích gì nhiều. |
| `/echoon` | Bật chế độ vọng lệnh. Được sử dụng để tìm và sửa lỗi. |
| `/langXXXX`<br/>(v1.0.0: `/langXX`) | v1.0.0: Chạy chương trình với ngôn ngữ được chỉ định trong `XX`. `XX` có thể là mã ngôn ngữ chữ cái ISO 2 của ngôn ngữ được hỗ trợ.<br/>v1.1.0+: Chạy chương trình bằng ngôn ngữ được chỉ định trong `XXXX`. `XXXX` có thể là mã ngôn ngữ BCP 47 của ngôn ngữ được hỗ trợ (không có dấu gạch ngang ở giữa).<br/>Xem phần [Bản địa hóa](https://github.com/gamingwithevets/msedgeremover/blob/main/README/README_vi-VN.md#b%E1%BA%A3n-%C4%91%E1%BB%8Ba-h%C3%B3a) để biết mã ngôn ngữ. |

# Chức năng
## Xóa Microsoft Edge Mới
Xóa Microsoft Edge dựa trên Chromium khỏi máy tính của bạn. Bạn có thể nhập số phiên bản trong lời nhắc số phiên bản hoặc để trống để chương trình tìm số phiên bản từ tệp thực thi `msedge.exe`. Trên đường đi, chương trình sẽ kiểm tra lỗi và nếu nó gặp lỗi, một thông báo sẽ hiển thị và quá trình loại bỏ bị tạm dừng.

## Quản lý Cài đặt lại Edge/Đề xuất Hộp Tìm kiếm
Sửa đổi các giá trị đăng ký để bật hoặc tắt cài đặt lại Microsoft Edge sau khi cập nhật hoặc để bật hoặc tắt các đề xuất Bing trong khi bạn đang tìm kiếm bằng công cụ Tìm kiếm của Windows.

# Bản địa hóa
**Phần mềm Gỡ bỏ Microsoft Edge và đề xuất Hộp tìm kiếm của GWE** hiện có hỗ trợ cho các ngôn ngữ sau:
| Ngôn ngữ | Quốc gia | Mã ISO 2 | Mã BCP 47 |
|--|--|--|--|
| Tiếng Anh/English (Mặc định) | Hoa Kỳ/United States | EN | en-US |
| Tiếng Đức/Deutsch | Đức/Deutschland | DE | de-DE |
| Tiếng Việt | Việt Nam | VI | vi-VN |

Bạn cũng có thể đóng góp! Chỉ cần gửi email cho tôi theo địa chỉ [`thenewgwe@gmail.com`](mailto: thenewgwe@gmail.com) và cung cấp bản dịch của bạn. Tôi sẽ xem xét nó và thêm nó vào chương trình.
Bạn cũng có thể gửi cho tôi bản dịch của tệp README này! Một lần nữa, nếu tôi hài lòng với nó, tôi sẽ chuyển nó thành bản dịch chính thức.
Bạn cũng có thể gửi cho tôi bản dịch *đã sửa đổi* nếu bạn không hài lòng với bản dịch hiện tại! Tôi chỉ sao chép chữ tiếng Anh vào [Google Dịch] (https://translate.google.com) và sửa lại một chút cho các ngôn ngữ không phải tiếng Anh, vì vậy tôi rất muốn có những bản dịch tốt nhất có thể.
