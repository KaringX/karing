<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - ยูทิลิตี้พร็อกซีที่เรียบง่ายและทรงพลัง
  <br>
</h1>

<h3 align="center">
GUI ของ <a href="https://github.com/SagerNet/sing-box">singbox</a> ที่สร้างด้วย <a href="https://github.com/flutter/flutter">flutter</a>.
</h3>

[English](./README.md) | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | [日本語](./README_ja.md) | [한국어](./README_ko.md) | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | [Tiếng Việt](./README_vi.md) | [Türkçe](./README_tr.md) | [Русский](./README_ru.md) | [فارسی](./README_fa.md) | [العربية](./README_ar.md) | [Português](./README_pt.md) | [Українська](./README_uk.md) | [Polski](./README_pl.md) | [اردو](./README_ur.md) | [Svenska](./README_sv.md) | [Norsk](./README_no.md) | [Nederlands](./README_nl.md) | [हिन्दी](./README_hi.md) | [Ελληνικά](./README_el.md) | [Dansk](./README_da.md) | [বাংলা](./README_bn.md) | ไทย | [ਪੰਜਾਬੀ](./README_pa.md)

### หมายเหตุ: Karing ไม่ได้เปิดช่องทางที่เกี่ยวข้องกับ Karing บนแพลตฟอร์มวิดีโอใดๆ ทั้งสิ้น

## คุณสมบัติ
- รองรับ Clash, V2ray/V2fly, Sing-box, Shadowsocks, Sub และการสมัครสมาชิก Github
  - รองรับการกำหนดค่า `clash` เต็มรูปแบบ และรองรับการกำหนดค่า `clash.meta` บางส่วน

- กฎเส้นทางชุดหนึ่งถูกนำไปใช้กับแหล่งที่มาของการสมัครสมาชิกหลายแห่งและเลือกโหนดที่มีประสิทธิภาพโดยอัตโนมัติ
- รองรับการกำหนดกลุ่มกฎการระบุเส้นทางและกลุ่มโหนดเอง
  - ปรับแต่งกลุ่มกฎดั้งเดิมสำหรับผู้ใช้ใหม่ - พร้อมใช้งานทันที
  - มาพร้อมกับ geo-IP, geo-site, ACL และ [ชุดกฎอื่นๆ](https://github.com/KaringX/karing-ruleset/) ในตัว

- สำรองและซิงโครไนซ์ข้อมูล ช่วยให้อุปกรณ์หลายเครื่องสามารถใช้การกำหนดค่าเดียวกันได้
  - รองรับการซิงโครไนซ์ผ่าน iCloud [IOS/MacOS]
  - รองรับการซิงโครไนซ์ภายในเครือข่ายท้องถิ่น
  - รองรับ WebDAV
  - รองรับการนำเข้า/ส่งออกไฟล์ ZIP

- สร้างมาให้รองรับ [แกนหลักรุ่นปรับปรุงของ sing-box](https://github.com/KaringX/sing-box)
- มีโหมดสำหรับผู้เริ่มต้นเพื่อการตั้งค่าที่ง่ายยิ่งขึ้น
- มีแผนเพื่อรองรับแพลตฟอร์มอื่นๆ เพิ่มเติม

## โปรโมชั่น
<details>
<summary>ดูโปรโมชั่นทั้งหมด

### 推荐机场

[狗狗加速 —— 技术流机场 Doggygo VPN](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)

- 高性能海外机场，海外团队，无跑路风险
- 专属链接注册送 3 天，每天 1G 流量 [免费试用](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)
- 优惠套餐每月仅需 15.8 元，160G 流量，年付 8 折
- 全球首家支持`Hysteria2` 协议，集群负载均衡设计，高速专线，极低延迟，无视晚高峰，4K 秒开
- 解锁流媒体及 ChatGPT

[👉更多机场优惠 每日更新](https://1.x31415926.top/)

</summary>

### 🤝ประกาศความร่วมมือกับผู้ให้บริการ VPN
- 👉[ข้อมูลการติดต่อและรูปแบบความร่วมมือ](https://karing.app/blog/isp/cooperation#for-vpn-providers-from-other-regions)👈
</details>

## ความต้องการของระบบ
- Windows >= 10 (64-bit only)
- Android >= 8 (arm64-v8a, armeabi-v7a)
- Linux (64-bit only)
- IOS >= 15
- MacOS >= 12 (Intel, Apple Silicon)
- TvOS >= 17

## การติดตั้ง
- **IOS/TvOS AppStore**: (Search Keywords: karing vpn)
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

### คำถามที่พบบ่อย

> [FAQ|en](https://karing.app/en/faq/)


## ภาพหน้าจอ

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

## การมีส่วนร่วม
[ยินดีต้อนรับการรายงานข้อบกพร่อง!](https://github.com/KaringX/karing/issues)

## สนับสนุน
![donate](./README_assets/img/donate-usdt.jpg)

## โครงการอื่นๆ
### กิตติกรรมประกาศ: Karing พัฒนาหรือได้รับแรงบันดาลใจจากโครงการเหล่านี้:

- [flutter](https://flutter.dev/): makes it easy and fast to build beautiful apps for mobile and beyond.
- [singbox](https://sing-box.sagernet.org/): The universal proxy platform.
- [Meta-Docs](https://wiki.metacubex.one/config/): Clash.Meta docs

### ทีมงาน Karing:
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## ประวัติการกดดาว

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)
