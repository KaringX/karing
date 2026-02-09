<div align="right" dir="rtl">

<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - أداة وكيل بسيطة وقوية
  <br>
</h1>

<h3 align="center">
واجهة مستخدم رسومية لـ <a href="https://github.com/SagerNet/sing-box">singbox</a> تعتمد على <a href="https://github.com/flutter/flutter">flutter</a>.
</h3>

<p align="center">
[English](./README.md) | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | [日本語](./README_ja.md) | [한국어](./README_ko.md) | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | [Tiếng Việt](./README_vi.md) | [Türkçe](./README_tr.md) | [Русский](./README_ru.md) | [فارسی](./README_fa.md) | العربية | [Português](./README_pt.md) | [Українська](./README_uk.md) | [Polski](./README_pl.md) | [اردو](./README_ur.md) | [Svenska](./README_sv.md) | [Norsk](./README_no.md) | [Nederlands](./README_nl.md) | [हिन्दी](./README_hi.md) | [Ελληνικά](./README_el.md) | [Dansk](./README_da.md) | [বাংলা](./README_bn.md)
</p>

### ملاحظة: لم يقم Karing بفتح أي قناة متعلقة بـ Karing على أي منصة فيديو.

## المميزات
- متوافق مع اشتراكات Clash و V2ray/V2fly و Sing-box و Shadowsocks و Sub و Github.
  - دعم كامل لتكوين `clash` ودعم جزئي لتكوين `clash.meta`.

- مجموعة من قواعد التوجيه المطبقة على مصادر اشتراك متعددة تختار تلقائيًا العقد الفعالة.
- يدعم مجموعات قواعد التوجيه المخصصة ومجموعات العقد.
  - تخصيص مجموعات قواعد التوجيه الافتراضية للمستخدمين المبتدئين - جاهز للاستخدام فورًا.
  - مدمج مع geo-IP و geo-site و ACL و [مجموعات القواعد الأخرى](https://github.com/KaringX/karing-ruleset/).

- النسخ الاحتياطي والمزامنة، مزامنة أجهزة متعددة بتكوين واحد.
  - يدعم مزامنة iCloud [IOS/MacOS].
  - يدعم المزامنة داخل الشبكة المحلية.
  - يدعم WebDAV.
  - يدعم استيراد/تصدير ملفات ZIP.

- دعم مدمج لـ [نواة sing-box المعدلة](https://github.com/KaringX/sing-box).
- تقديم وضع المبتدئين لتكوين أبسط.
- خطة لدعم المزيد من المنصات.

## ترويج
<details>
<summary>عرض جميع العروض الترويجية

### VPN الموصى به

[Doggygo VPN —— تسريع للمحترفين](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)

- مزود خدمة (Airport) عالي الأداء في الخارج، فريق دولي، لا يوجد خطر من الإغلاق.
- التسجيل عبر رابط حصري يمنح 3 أيام و 1 جيجابايت من حركة المرور اليومية [تجربة مجانية](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053).
- حزم مخفضة تبدأ من 15.8 يوان فقط شهريًا، 160 جيجابايت من حركة المرور، خصم 20% للدفع السنوي.
- الأول في العالم الذي يدعم بروتوكول `Hysteria2` ، تصميم موازنة تحميل المجموعة، خط مخصص عالي السرعة، زمن وصول منخفض للغاية، يتجاهل ذروة الليل، فتح 4K فوري.
- يفتح وسائط البث و ChatGPT.

[👉 المزيد من العروض المحدثة يوميًا](https://1.x31415926.top/)

</summary>

### 🤝 إعلان تعاون لمزودي VPN
- 👉 [معلومات الاتصال ونماذج التعاون](https://karing.app/blog/isp/cooperation#for-vpn-providers-from-other-regions) 👈
</details>

## متطلبات النظام
- Windows >= 10 (64 بت فقط)
- Android >= 8 (arm64-v8a, armeabi-v7a)
- Linux (64 بت فقط)
- IOS >= 15
- MacOS >= 12 (Intel, Apple Silicon)
- TvOS >= 17

## التثبيت
- **IOS/TvOS AppStore**: (كلمات البحث: karing vpn)
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

### الأسئلة الشائعة (FAQ)

> [FAQ|ar](https://karing.app/en/faq/)

## المهام القادمة (Todos)
- المنصات التي سيتم دعمها:
  - linux | [linglong](https://linglong.dev/)
- العولمة (متعدد اللغات)
  - إذا كنت ترغب في العمل معنا لدعم عولمة Karing، يرجى الاتصال بنا عبر [Telegram](https://t.me/ovowe).

## لقطات الشاشة

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

## المساهمات
[نرحب بالإبلاغ عن المشكلات!](https://github.com/KaringX/karing/issues)

## تبرع
![donate](./README_assets/img/donate-usdt.jpg)

## المشاريع
### شكر وتقدير: تم بناء Karing بناءً على هذه المشاريع أو استلهامها منها:

- [flutter](https://flutter.dev/): يجعل من السهل والسريع بناء تطبيقات جميلة للهاتف المحمول وما بعده.
- [singbox](https://sing-box.sagernet.org/): منصة الوكيل العالمية.
- [Meta-Docs](https://wiki.metacubex.one/config/): وثائق Clash.Meta

### فريق Karing:
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)

</div>
