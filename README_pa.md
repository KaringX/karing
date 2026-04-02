<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - ਸਰਲ ਅਤੇ ਸ਼ਕਤੀਸ਼ਾਲੀ ਪ੍ਰੌਕਸੀ ਯੂਟਿਲਟੀ
  <br>
</h1>

<h3 align="center">
ਇੱਕ <a href="https://github.com/SagerNet/sing-box">singbox</a> GUI ਜੋ <a href="https://github.com/flutter/flutter">flutter</a> 'ਤੇ ਅਧਾਰਤ ਹੈ।
</h3>

[English](./README.md) | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | [日本語](./README_ja.md) | [한국어](./README_ko.md) | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | [Tiếng Việt](./README_vi.md) | [Türkçe](./README_tr.md) | [Русский](./README_ru.md) | [فارسی](./README_fa.md) | [العربية](./README_ar.md) | [Português](./README_pt.md) | [Українська](./README_uk.md) | [Polski](./README_pl.md) | [اردو](./README_ur.md) | [Svenska](./README_sv.md) | [Norsk](./README_no.md) | [Nederlands](./README_nl.md) | [हिन्दी](./README_hi.md) | [Ελληνικά](./README_el.md) | [Dansk](./README_da.md) | [বাংলা](./README_bn.md) | [ไทย](./README_th.md) | ਪੰਜਾਬੀ

### ਨੋਟ: Karing ਨੇ ਕਿਸੇ ਵੀ ਵੀਡੀਓ ਪਲੇਟਫਾਰਮ 'ਤੇ Karing ਨਾਲ ਸਬੰਧਤ ਕੋਈ ਚੈਨਲ ਨਹੀਂ ਖੋਲ੍ਹਿਆ ਹੈ

## ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ
- Clash, V2ray/V2fly, Sing-box, Shadowsocks, Sub, ਅਤੇ Github ਸਬਸਕ੍ਰਿਪਸ਼ਨਸ ਦੇ ਅਨੁਕੂਲ।
  - ਪੂਰੀ `clash` ਕੌਨਫਿਗ ਸਮਰਥਿਤ, ਅੰਸ਼ਿਕ `clash.meta` ਕੌਨਫਿਗ ਸਮਰਥਿਤ।

- ਰੂਟਿੰਗ ਨਿਯਮਾਂ ਦਾ ਇੱਕ ਸੈੱਟ ਆਪਣੇ ਆਪ ਕਈ ਸਬਸਕ੍ਰਿਪਸ਼ਨ ਸਰੋਤਾਂ ਤੇ ਲਾਗੂ ਹੁੰਦਾ ਹੈ ਅਤੇ ਉੱਚ ਪ੍ਰਭਾਵ ਵਾਲੇ ਨੋਡਾਂ ਨੂੰ ਚੁਣਦਾ ਹੈ।
- ਕਸਟਮ ਰੂਟਿੰਗ ਨਿਯਮ ਗਰੁੱਪਾਂ ਅਤੇ ਨੋਡ ਗਰੁੱਪਾਂ ਨੂੰ ਸਮਰਥਨ ਦਿੰਦਾ ਹੈ।
  - ਨਵੇਂ ਵਰਤੋਂਕਾਰਾਂ ਲਈ ਡਿਫੌਲਟ ਰੂਟਿੰਗ ਨਿਯਮ ਗਰੁੱਪ ਤਿਆਰ ਕਰਦਾ ਹੈ - ਬਿਨਾਂ ਕਿਸੇ ਮੁਸ਼ਕਲ ਦੇ ਵਰਤਣ ਲਈ ਤਿਆਰ।
  - ਬਿਲਟ-ਇਨ geo-IP, geo-site, ACL, ਅਤੇ [ਹੋਰ ਨਿਯਮ](https://github.com/KaringX/karing-ruleset/) ਆਦਿ।

- ਬੈਕਅਪ ਅਤੇ ਸਿੰਕ੍ਰੋਨਾਈਜ਼ੇਸ਼ਨ, ਕਈ ਡਿਵਾਈਸਾਂ ਨੂੰ ਇੱਕ ਕੌਨਫਿਗਰੇਸ਼ਨ ਨਾਲ ਸਿੰਕ੍ਰੋਨਾਈਜ਼ ਕਰਦਾ ਹੈ।
  - iCloud ਸਿੰਕ੍ਰੋਨਾਈਜ਼ੇਸ਼ਨ [IOS/MacOS] ਨੂੰ ਸਮਰਥਨ ਦਿੰਦਾ ਹੈ।
  - ਲੋਕਲ ਨੈੱਟਵਰਕ ਵਿੱਚ ਸਿੰਕ੍ਰੋਨਾਈਜ਼ੇਸ਼ਨ ਨੂੰ ਸਮਰਥਨ ਦਿੰਦਾ ਹੈ।
  - WebDAV ਨੂੰ ਸਮਰਥਨ ਦਿੰਦਾ ਹੈ।
  - ZIP ਫਾਈਲਾਂ ਦੀ ਆਯਾਤ/ਨਿਰਯਾਤ ਨੂੰ ਸਮਰਥਨ ਦਿੰਦਾ ਹੈ।

- [ਸੋਧੇ ਹੋਏ sing-box ਕੋਰ](https://github.com/KaringX/sing-box) ਦਾ ਸਮਰਥਨ ਕਰਦਾ ਹੈ।
- ਸਰਲ ਸੰਰਚਨਾ ਲਈ ਇੱਕ ਸ਼ੁਰੂਆਤੀ ਮੋਡ ਪੇਸ਼ ਕਰਦਾ ਹੈ।
- ਹੋਰ ਪਲੇਟਫਾਰਮਾਂ ਨੂੰ ਸਮਰਥਨ ਦੇਣ ਦੀ ਯੋਜਨਾ ਹੈ।

## ਇਸ਼ਤਿਹਾਰਬਾਜ਼ੀ
<details>
<summary>ਸਾਰੀਆਂ ਪੇਸ਼ਕਸ਼ਾਂ ਵੇਖੋ

### 推荐机场

[狗狗加速 —— 技术流机场 Doggygo VPN](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)

- 高性能海外机场，海外团队，无跑路风险
- 专属链接注册送 3 天，每天 1G 流量 [免费试用](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)
- 优惠套餐每月仅需 15.8 元，160G 流量，年付 8 折
- 全球首家支持`Hysteria2` 协议，集群负载均衡设计，高速专线，极低延迟，无视晚高峰，4K 秒开
- 解锁流媒体及 ChatGPT

[👉更多机场优惠 每日更新](https://1.x31415926.top/)

</summary>

### 🤝VPN ਪ੍ਰਦਾਨਕਾਂ ਨਾਲ ਸਹਿਯੋਗ ਦਾ ਐਲਾਨ
- 👉[ਸੰਪਰਕ ਜਾਣਕਾਰੀ ਅਤੇ ਸਹਿਯੋਗ ਦੇ ਰੂਪ](https://karing.app/blog/isp/cooperation#for-vpn-providers-from-other-regions)👈
</details>

## ਸਿਸਟਮ ਲੋੜਾਂ
- Windows >= 10 (64-bit only)
- Android >= 8 (arm64-v8a, armeabi-v7a)
- Linux (64-bit only)
- IOS >= 15
- MacOS >= 12 (Intel, Apple Silicon)
- TvOS >= 17

## ਇੰਸਟਾਲ ਕਰੋ
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

### ਅਕਸਰ ਪੁੱਛੇ ਜਾਣ ਵਾਲੇ ਸਵਾਲ

> [FAQ|en](https://karing.app/en/faq/)


## ਸਕਰੀਨਸ਼ਾਟ

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

## ਯੋਗਦਾਨ
[ਬੱਗ ਰਿਪੋਰਟ ਕਰਨ ਲਈ ਜੀ ਆਇਆਂ ਨੂੰ!](https://github.com/KaringX/karing/issues)

## ਦਾਨ ਕਰੋ
![donate](./README_assets/img/donate-usdt.jpg)

## ਪ੍ਰੋਜੈਕਟ
### ਧੰਨਵਾਦ: Karing ਇਹਨਾਂ ਪ੍ਰੋਜੈਕਟਾਂ ਤੋਂ ਪ੍ਰੇਰਿਤ ਹੈ ਜਾਂ ਇਹਨਾਂ 'ਤੇ ਅਧਾਰਤ ਹੈ:

- [flutter](https://flutter.dev/): makes it easy and fast to build beautiful apps for mobile and beyond.
- [singbox](https://sing-box.sagernet.org/): The universal proxy platform.
- [Meta-Docs](https://wiki.metacubex.one/config/): Clash.Meta docs

### ਟੀਮ:
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## ਸਟਾਰ ਇਤਿਹਾਸ

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)
