<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - সহজ এবং শক্তিশালী প্রক্সি ইউটিলিটি
  <br>
</h1>

<h3 align="center">
<a href="https://github.com/flutter/flutter">flutter</a> এর উপর ভিত্তি করে একটি <a href="https://github.com/SagerNet/sing-box">singbox</a> GUI।
</h3>

[English](./README.md) | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | [日本語](./README_ja.md) | [한국어](./README_ko.md) | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | [Tiếng Việt](./README_vi.md) | [Türkçe](./README_tr.md) | [Русский](./README_ru.md) | [فارسی](./README_fa.md) | [العربية](./README_ar.md) | [Português](./README_pt.md) | [Українська](./README_uk.md) | [Polski](./README_pl.md) | [اردو](./README_ur.md) | [Svenska](./README_sv.md) | [Norsk](./README_no.md) | [Nederlands](./README_nl.md) | [हिन्दी](./README_hi.md) | [Ελληνικά](./README_el.md) | [Dansk](./README_da.md) | বাংলা | [ไทย](./README_th.md) | [ਪੰਜਾਬੀ](./README_pa.md)

### নোট: Karing কোনো ভিডিও প্ল্যাটফর্মে Karing সম্পর্কিত কোনো চ্যানেল খোলেনি।

## বৈশিষ্ট্যসমূহ
- Clash, V2ray/V2fly, Sing-box, Shadowsocks, Sub, Github সাবস্ক্রিপশনের সাথে সামঞ্জস্যপূর্ণ।
  - সম্পূর্ণ `clash` কনফিগারেশন সমর্থিত, আংশিক `clash.meta` কনফিগারেশন সমর্থিত।

- একাধিক সাবস্ক্রিপশন উৎসে প্রয়োগ করা রাউটিং নিয়মের একটি সেট স্বয়ংক্রিয়ভাবে দক্ষ নোড নির্বাচন করে।
- কাস্টম রাউটিং রুল গ্রুপ এবং নোড গ্রুপ সমর্থন করে।
  - নতুন ব্যবহারকারীদের জন্য ডিফল্ট রাউটিং রুল গ্রুপ কাস্টমাইজ করে - ইনস্টল করার সাথে সাথেই ব্যবহারের জন্য প্রস্তুত।
  - বিল্ট-ইন geo-IP, geo-site, ACL এবং [অন্যান্য রুল সেট](https://github.com/KaringX/karing-ruleset/)।

- ব্যাকআপ এবং সিঙ্ক্রোনাইজেশন, একটি একক কনফিগারেশনের সাথে একাধিক ডিভাইস সিঙ্ক্রোনাইজ করা।
  - iCloud সিঙ্ক্রোনাইজেশন সমর্থন করে [IOS/MacOS]।
  - লোকাল এরিয়া নেটওয়ার্কের মধ্যে সিঙ্ক্রোনাইজেশন সমর্থন করে।
  - WebDAV সমর্থন করে।
  - ZIP ফাইল ইম্পোর্ট/এক্সপোর্ট সমর্থন করে।

- [সংশোধিত sing-box কোর](https://github.com/KaringX/sing-box) এর জন্য বিল্ট-ইন সমর্থন।
- সহজ কনফিগারেশনের জন্য বিগিনার মোড চালু করা হয়েছে।
- আরও প্ল্যাটফর্ম সমর্থন করার পরিকল্পনা।

## প্রচার
<details>
<summary>সব প্রচার দেখুন

### প্রস্তাবিত VPN

[Doggygo VPN —— বিশেষজ্ঞদের জন্য ত্বরণ](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)

- উচ্চ কর্মক্ষমতা সম্পন্ন বিদেশী সরবরাহকারী (Airport), আন্তর্জাতিক দল, বন্ধ হওয়ার কোনো ঝুঁকি নেই।
- একচেটিয়া লিঙ্কের মাধ্যমে নিবন্ধনে ৩ দিন এবং প্রতিদিন ১জিবি ডেটা পাওয়া যায় [বিনামূল্যে ট্রায়াল](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)।
- ডিসকাউন্ট প্যাকেজ প্রতি মাসে মাত্র ১৫.৮ ইউয়ান থেকে, ১৬০জিবি ডেটা, বার্ষিক পেমেন্টে ২০% ছাড়।
- বিশ্বে প্রথম যারা `Hysteria2` প্রোটোকল সমর্থন করে, ক্লাস্টার লোড ব্যালেন্সিং ডিজাইন, হাই-স্পিড ডেডিকেটেড লাইন, অত্যন্ত কম লেটেন্সি, রাতের ভিড় উপেক্ষা করে, সাথে সাথে 4K প্লে।
- স্ট্রিমিং মিডিয়া এবং ChatGPT আনলক করে।

[👉 প্রতিদিন আপডেট হওয়া আরও অফার দেখুন](https://1.x31415926.top/)

</summary>

### 🤝 VPN প্রদানকারীদের জন্য সহযোগিতার ঘোষণা
- 👉 [যোগাযোগের তথ্য এবং সহযোগিতার ধরন](https://karing.app/blog/isp/cooperation#for-vpn-providers-from-other-regions) 👈
</details>

## সিস্টেমের প্রয়োজনীয়তা
- Windows >= 10 (শুধুমাত্র 64-বিট)
- Android >= 8 (arm64-v8a, armeabi-v7a)
- Linux (শুধুমাত্র 64-বিট)
- IOS >= 15
- MacOS >= 12 (Intel, Apple Silicon)
- TvOS >= 17

## ইনস্টলেশন
- **IOS/TvOS AppStore**: (অনুসন্ধান কীওয়ার্ড: karing vpn)
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

### সাধারণ প্রশ্ন (FAQ)

> [FAQ|bn](https://karing.app/en/faq/)


## স্ক্রিনশট

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

## অবদান
[সমস্যা রিপোর্ট করার জন্য স্বাগতম!](https://github.com/KaringX/karing/issues)

## দান করুন
![donate](./README_assets/img/donate-usdt.jpg)

## প্রকল্পসমূহ
### স্বীকৃতি: Karing এই প্রকল্পগুলোর উপর ভিত্তি করে বা অনুপ্রাণিত:

- [flutter](https://flutter.dev/): মোবাইল এবং এর বাইরের জন্য সুন্দর অ্যাপ তৈরি করা সহজ এবং দ্রুত করে তোলে।
- [singbox](https://sing-box.sagernet.org/): ইউনিভার্সাল প্রক্সি প্ল্যাটফর্ম।
- [Meta-Docs](https://wiki.metacubex.one/config/): Clash.Meta ডকুমেন্টেশন

### Karing টিম:
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)
