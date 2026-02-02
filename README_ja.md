<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - シンプルで強力なプロキシユーティリティ
  <br>
</h1>

<h3 align="center">
<a href="https://github.com/flutter/flutter">flutter</a> ベースの <a href="https://github.com/SagerNet/sing-box">sing-box</a> GUI。
</h3>

English | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | 日本語 | [한국어](./README_ko.md) | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | [Tiếng Việt](./README_vi.md) | [Türkçe](./README_tr.md) | [Русский](./README_ru.md) | [فارسی](./README_fa.md) | [العربية](./README_ar.md) | [Português](./README_pt.md) | [Українська](./README_uk.md) | [Polski](./README_pl.md)

### Note: 

## 特徴
- Clash, V2ray/V2fly, Sing-box, Shadowsocks, Sub, Github サブスクリプションと互換性があります。
  - 完全な `clash` 設定をサポート、一部の `clash.meta` 設定をサポート。

- 複数のサブスクリプションソースに適用される一連のルーティングルールにより、効率的なノードを自動的に選択します。
- カスタムルーティングルールグループとノードグループをサポート。
  - 初心者ユーザー向けにデフォルトのルーティングルールグループをカスタマイズ - インストール後すぐに使用可能。
  - 内蔵の geo-IP, geo-site, ACL、および [その他のルールセット](https://github.com/KaringX/karing-ruleset/) をサポート。

- バックアップと同期、単一の設定で複数のデバイスを同期。
  - iCloud 同期をサポート [IOS/MacOS]。
  - ローカルエリアネットワーク内での同期をサポート。
  - WebDAV をサポート。
  - ZIP ファイルのインポート/エクスポートをサポート。

- [カスタマイズされた sing-box コア](https://github.com/KaringX/sing-box) の内蔵サポート。
- より簡単な設定のためのビギナーモードを導入。
- より多くのプラットフォームをサポートする計画。

## プロモーション
<details>
<summary>View all promotions

### Recommend VPN

[狗狗加速 —— 技术流机场 Doggygo VPN](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)

- High-performance overseas airport, overseas team, no risk of running away
- Exclusive link registration gives 3 days, 1G traffic per day [Free trial](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)
- Discount package is only 15.8 yuan per month, 160G traffic, 20% off for annual payment
- The world's first to support `Hysteria2` protocol, cluster load balancing design, high-speed dedicated line, extremely low latency, ignore evening peak, 4K second open
- Unlock streaming media and ChatGPT

[👉More airport discounts updated daily](https://1.x31415926.top/)

</summary>

### 🤝VPN Providers Collaboration Announcement
- 👉[Contact information and forms of cooperation](https://karing.app/blog/isp/cooperation#for-vpn-providers-from-other-regions)👈
</details>

## システム要件
- Windows >= 10 (64ビットのみ)
- Android >= 8 (arm64-v8a, armeabi-v7a)
- Linux (64ビットのみ)
- IOS >= 15
- MacOS >= 12 (Intel, Apple Silicon)
- TvOS >= 17

## インストール
- **IOS/TvOS AppStore**: (検索キーワード: karing vpn)
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

### FAQ

> [FAQ|en](https://karing.app/en/faq/)

## Todos
- Platform to be supported:
  - linux | [linglong](https://linglong.dev/)
- Globalization(multi-language)
  - If you are willing to work with us to support Karing globalization, please contact us [Telegram](https://t.me/ovowe)

## スクリーンショット

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

## 貢献
[バグ報告をお待ちしています！](https://github.com/KaringX/karing/issues)

## 寄付
![donate](./README_assets/img/donate-usdt.jpg)

## プロジェクト
### 謝辞: Karing は以下のプロジェクトに基づいているか、インスピレーションを受けています:
- [flutter](https://flutter.dev/): モバイルやその他のための美しいアプリを簡単かつ迅速に構築できます。
- [singbox](https://sing-box.sagernet.org/): ユニバーサルプロキシプラットフォーム。
- [Meta-Docs](https://wiki.metacubex.one/config/): Clash.Meta ドキュメント

### Karing チーム:
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)
