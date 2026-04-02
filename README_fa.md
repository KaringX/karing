<div align="right" dir="rtl">

<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - ابزار پروکسی ساده و قدرتمند
  <br>
</h1>

<h3 align="center">
یک رابط کاربری گرافیکی برای <a href="https://github.com/SagerNet/sing-box">singbox</a> بر پایه <a href="https://github.com/flutter/flutter">flutter</a>.
</h3>

<p align="center">
[English](./README.md) | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | [日本語](./README_ja.md) | [한국어](./README_ko.md) | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | [Tiếng Việt](./README_vi.md) | [Türkçe](./README_tr.md) | [Русский](./README_ru.md) | فارسی | [العربية](./README_ar.md) | [Português](./README_pt.md) | [Українська](./README_uk.md) | [Polski](./README_pl.md) | [اردو](./README_ur.md) | [Svenska](./README_sv.md) | [Norsk](./README_no.md) | [Nederlands](./README_nl.md) | [हिन्दी](./README_hi.md) | [Ελληνικά](./README_el.md) | [Dansk](./README_da.md) | [বাংলা](./README_bn.md) | [ไทย](./README_th.md) | [ਪੰਜਾਬੀ](./README_pa.md)
</p>

### نکته: Karing هیچ کانالی در هیچ پلتفرم ویدیویی در رابطه با Karing باز نکرده است.

## ویژگی‌ها
- سازگار با اشتراک‌های Clash، V2ray/V2fly، Sing-box، Shadowsocks، Sub، Github.
  - پشتیبانی کامل از پیکربندی `clash` و پشتیبانی نسبی از پیکربندی `clash.meta`.

- مجموعه‌ای از قوانین مسیریابی اعمال شده بر چندین منبع اشتراک، به طور خودکار گره‌های کارآمد را انتخاب می‌کند.
- پشتیبانی از گروه‌های قوانین مسیریابی و گروه‌های گره سفارشی.
  - گروه‌های قوانین مسیریابی پیش‌فرض را برای کاربران مبتدی سفارشی می‌کند - آماده استفاده بلافاصله پس از نصب.
  - دارای geo-IP، geo-site، ACL و [سایر مجموعه‌های قوانین](https://github.com/KaringX/karing-ruleset/) داخلی.

- پشتیبان‌گیری و همگام‌سازی، همگام‌سازی چندین دستگاه با یک پیکربندی واحد.
  - پشتیبانی از همگام‌سازی iCloud [IOS/MacOS].
  - پشتیبانی از همگام‌سازی در شبکه محلی.
  - پشتیبانی از WebDAV.
  - پشتیبانی از وارد کردن/صادر کردن فایل‌های ZIP.

- پشتیبانی داخلی از [هسته sing-box اصلاح شده](https://github.com/KaringX/sing-box).
- معرفی حالت مبتدی برای پیکربندی ساده‌تر.
- برنامه برای پشتیبانی از پلتفرم‌های بیشتر.

## تبلیغات
<details>
<summary>مشاهده همه تبلیغات

### VPN پیشنهادی

[Doggygo VPN —— شتاب‌دهنده برای متخصصان](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)

- ارائه‌دهنده خدمات (Airport) با کارایی بالا در خارج از کشور، تیم بین‌المللی، بدون خطر بسته شدن.
- ثبت‌نام با لینک اختصاصی ۳ روز و ۱ گیگابایت ترافیک روزانه هدیه می‌دهد [امتحان رایگان](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053).
- بسته‌های تخفیفی فقط از ۱۵.۸ یوان در ماه، ۱۶۰ گیگابایت ترافیک، ۲۰٪ تخفیف برای پرداخت سالانه.
- اولین در جهان با پشتیبانی از پروتکل `Hysteria2` ، طراحی متعادل‌سازی بار خوشه‌ای، خط اختصاصی پرسرعت، تأخیر بسیار کم، نادیده گرفتن پیک شبانه، پخش آنی 4K.
- باز کردن قفل رسانه‌های جریانی و ChatGPT.

[👉 پیشنهادات بیشتر که روزانه به روز می‌شوند](https://1.x31415926.top/)

</summary>

### 🤝 اطلاعیه همکاری برای ارائه‌دهندگان VPN
- 👉 [اطلاعات تماس و فرم‌های همکاری](https://karing.app/blog/isp/cooperation#for-vpn-providers-from-other-regions) 👈
</details>

## سیستم مورد نیاز
- Windows >= 10 (فقط ۶۴ بیتی)
- Android >= 8 (arm64-v8a, armeabi-v7a)
- Linux (فقط ۶۴ بیتی)
- IOS >= 15
- MacOS >= 12 (Intel, Apple Silicon)
- TvOS >= 17

## نصب
- **IOS/TvOS AppStore**: (کلمات کلیدی جستجو: karing vpn)
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

### سوالات متداول (FAQ)

> [FAQ|fa](https://karing.app/en/faq/)


## اسکرین‌شات‌ها

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

## مشارکت
[از گزارش مشکلات استقبال می‌کنیم!](https://github.com/KaringX/karing/issues)

## حمایت مالی
![donate](./README_assets/img/donate-usdt.jpg)

## پروژه‌ها
### قدردانی: Karing بر پایه این پروژه‌ها بنا شده یا از آن‌ها الهام گرفته است:

- [flutter](https://flutter.dev/): ساخت اپلیکیشن‌های زیبا برای موبایل و فراتر از آن را آسان و سریع می‌کند.
- [singbox](https://sing-box.sagernet.org/): پلتفرم پروکسی جهانی.
- [Meta-Docs](https://wiki.metacubex.one/config/): مستندات Clash.Meta

### تیم Karing:
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)

</div>
