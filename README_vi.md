<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - Tiện ích proxy đơn giản và mạnh mẽ
  <br>
</h1>

<h3 align="center">
Giao diện người dùng <a href="https://github.com/SagerNet/sing-box">singbox</a> dựa trên <a href="https://github.com/flutter/flutter">flutter</a>.
</h3>

[English](./README.md) | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | [日本語](./README_ja.md) | [한국어](./README_ko.md) | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | Tiếng Việt | [Türkçe](./README_tr.md) | [Русский](./README_ru.md) | [فارسی](./README_fa.md) | [العربية](./README_ar.md) | [Português](./README_pt.md) | [Українська](./README_uk.md) | [Polski](./README_pl.md) | [اردو](./README_ur.md) | [Svenska](./README_sv.md) | [Norsk](./README_no.md) | [Nederlands](./README_nl.md) | [हिन्दी](./README_hi.md) | [Ελληνικά](./README_el.md) | [Dansk](./README_da.md) | [বাংলা](./README_bn.md) | [ไทย](./README_th.md) | [ਪੰਜਾਬੀ](./README_pa.md)

### Lưu ý: Karing không có bất kỳ kênh chính thức nào trên các nền tảng video.

## Tính năng
- Tương thích với các đăng ký Clash, V2ray/V2fly, Sing-box, Shadowsocks, Sub, Github.
  - Hỗ trợ đầy đủ cấu hình `clash`, hỗ trợ một phần cấu hình `clash.meta`.

- Một bộ quy tắc định tuyến áp dụng cho nhiều nguồn đăng ký sẽ tự động chọn các nút hiệu quả.
- Hỗ trợ các nhóm quy tắc định tuyến và nhóm nút tùy chỉnh.
  - Tùy chỉnh các nhóm quy tắc định tuyến mặc định cho người dùng mới - sẵn sàng sử dụng ngay.
  - Tích hợp geo-IP, geo-site, ACL và [các bộ quy tắc khác](https://github.com/KaringX/karing-ruleset/).

- Sao lưu và đồng bộ hóa, đồng bộ hóa nhiều thiết bị với một cấu hình duy nhất.
  - Hỗ trợ đồng bộ hóa iCloud [IOS/MacOS].
  - Hỗ trợ đồng bộ hóa trong mạng nội bộ.
  - Hỗ trợ WebDAV.
  - Hỗ trợ nhập/xuất tệp ZIP.

- Hỗ trợ tích hợp cho [lõi sing-box đã được sửa đổi](https://github.com/KaringX/sing-box).
- Giới thiệu chế độ người mới bắt đầu để cấu hình đơn giản hơn.
- Kế hoạch hỗ trợ nhiều nền tảng hơn.

## Quảng cáo
<details>
<summary>Xem tất cả quảng cáo

### VPN được đề xuất

[Doggygo VPN —— Tăng tốc cho chuyên gia](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)

- Nhà cung cấp Proxy/VPN hiệu suất cao ở nước ngoài, đội ngũ quốc tế, không có rủi ro đóng cửa.
- Đăng ký qua liên kết độc quyền được tặng 3 ngày và 1G lưu lượng hàng ngày [Dùng thử miễn phí](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053).
- Các gói cước chỉ từ 15.8 nhân dân tệ mỗi tháng, 160G lưu lượng, giảm giá 20% khi thanh toán hàng năm.
- Đầu tiên trên thế giới hỗ trợ giao thức `Hysteria2`, thiết kế cân bằng tải cụm, đường truyền chuyên dụng tốc độ cao, độ trễ cực thấp, không lo giờ cao điểm, xem 4K mượt mà.
- Mở khóa các phương tiện truyền thông trực tuyến và ChatGPT.

[👉 Xem thêm ưu đãi được cập nhật hàng ngày](https://1.x31415926.top/)

</summary>

### 🤝 Thông báo hợp tác cho các nhà cung cấp VPN
- 👉 [Thông tin liên hệ và hình thức hợp tác](https://karing.app/blog/isp/cooperation#for-vpn-providers-from-other-regions) 👈
</details>

## Yêu cầu hệ thống
- Windows >= 10 (chỉ bản 64-bit)
- Android >= 8 (arm64-v8a, armeabi-v7a)
- Linux (chỉ bản 64-bit)
- IOS >= 15
- MacOS >= 12 (Intel, Apple Silicon)
- TvOS >= 17

## Cài đặt
- **IOS/TvOS AppStore**: (Từ khóa tìm kiếm: karing vpn)
  - https://apps.apple.com/us/app/karing/id6472431552
- **IOS/TvOS TestFlight**:
  - https://testflight.apple.com/join/RLU59OsJ
- **Android**:
  - [https://karing.app/download](https://karing.app/download)
  - https://github.com/KaringX/karing/releases/latest
  - APKPure https://apkpure.com/p/com.nebula.karing
  - Amazon AppStore https://www.amazon.com/gp/product/B0DJSQDDM8
- **Windows/Macos/Linux**:
  - [https://karing.app/download](https://karing.app/download)
  - https://github.com/KaringX/karing/releases/latest
  - `brew install karing`

### Câu hỏi thường gặp (FAQ)

> [FAQ|vi](https://karing.app/en/faq/)

## Ảnh chụp màn hình

<div align="center">
  <img src="./README_assets/demo/home.png" alt="demo1" width="50%" />
  </br></br>
  <img src="./README_assets/demo/select_server.png" alt="demo2" width="50%" />
    </br></br>
  <img src="./README_assets/demo/connections.png" alt="demo3" width="50%" />
  </br></br>
  <img src="./README_assets/demo/setting.png" alt="demo4" width="50%" />
  </br></br>
  <img src="./README_assets/demo/routing_group.png" alt="demo5" width="50%" />
  </br></br>
  <img src="./README_assets/demo/add_profile_link.png" alt="demo6" width="50%" />
</div>

## Đóng góp
[Chào mừng bạn báo cáo lỗi!](https://github.com/KaringX/karing/issues)

## Quyên góp
![donate](./README_assets/img/donate-usdt.jpg)

## Dự án
### Lời cảm ơn: Karing được dựa trên hoặc lấy cảm hứng từ các dự án sau:

- [flutter](https://flutter.dev/): giúp xây dựng các ứng dụng đẹp mắt cho di động và các nền tảng khác một cách dễ dàng và nhanh chóng.
- [singbox](https://sing-box.sagernet.org/): Nền tảng proxy phổ quát.
- [Meta-Docs](https://wiki.metacubex.one/config/): Tài liệu Clash.Meta

### Đội ngũ Karing:
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)
