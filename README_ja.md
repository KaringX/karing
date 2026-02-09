<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - シンプルで強力なプロキシユーティリティ
  <br>
</h1>

<h3 align="center">
<a href="https://github.com/flutter/flutter">flutter</a> ベースの <a href="https://github.com/SagerNet/sing-box">singbox</a> GUI。
</h3>

[English](./README.md) | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | 日本語 | [한국어](./README_ko.md) | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | [Tiếng Việt](./README_vi.md) | [Türkçe](./README_tr.md) | [Русский](./README_ru.md) | [فارسی](./README_fa.md) | [العربية](./README_ar.md) | [Português](./README_pt.md) | [Українська](./README_uk.md) | [Polski](./README_pl.md) | [اردو](./README_ur.md) | [Svenska](./README_sv.md) | [Norsk](./README_no.md) | [Nederlands](./README_nl.md) | [हिन्दी](./README_hi.md) | [Ελληνικά](./README_el.md) | [Dansk](./README_da.md) | [বাংলা](./README_bn.md)

### 注：Karingは動画プラットフォーム等で公式チャンネルを一切開設していません。

## 特徴
- Clash、V2ray/V2fly、Sing-box、Shadowsocks、Sub、Github サブスクリプションに対応。
  - `clash` 設定を完全サポート、`clash.meta` 設定を一部サポート。

- 複数のサブスクリプションソースに適用される一連のルーティングルールにより、効率的なノードを自動的に選択。
- カスタムルーティングルールグループとノードグループをサポート。
  - 初心者向けのデフォルトルーティングルールグループをカスタマイズ - すぐに使用可能。
  - geo-IP、geo-site、ACL、および[その他のルールセット](https://github.com/KaringX/karing-ruleset/)を内蔵。

- バックアップと同期、単一の設定で複数のデバイスを同期。
  - iCloud 同期をサポート [IOS/MacOS]。
  - ローカルエリアネットワーク内での同期をサポート。
  - WebDAV をサポート。
  - ZIP ファイルのインポート/エクスポートをサポート。

- [カスタマイズされた sing-box コア](https://github.com/KaringX/sing-box)のサポートを内蔵。
- より簡単な設定のためのビギナーモードを導入。
- より多くのプラットフォームをサポートする計画。

## プロモーション
<details>
<summary>すべてのプロモーションを表示

### おすすめのプロキシプロバイダー

[狗狗加速 —— 技術重視のプロバイダー Doggygo VPN](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)

- 高性能な海外プロバイダー、海外チーム、運営停止のリスクなし
- 専用リンクからの登録で 3 日間、毎日 1G のトラフィックを[無料でお試し](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)
- お得なプランは月額わずか 15.8 元、160G のトラフィック、年払いで 20% オフ
- 世界初 `Hysteria2` プロトコル対応、クラスター負荷分散設計、高速専用線、超低遅延、夜間の混雑なし、4K 動画もスムーズ
- ストリーミングサービスおよび ChatGPT の制限解除

[👉その他の空港特典 毎日更新](https://1.x31415926.top/)

</summary>

### 🤝VPN プロバイダー提携のお知らせ
- 👉[お問い合わせ先と提携形態](https://karing.app/blog/isp/cooperation#for-vpn-providers-from-other-regions)👈
</details>

## システム要件
- Windows >= 10 (64ビットのみ)
- Android >= 8 (arm64-v8a, armeabi-v7a)
- Linux (64ビットのみ)
- IOS >= 15
- MacOS >= 12 (Intel, Apple Silicon)
- TvOS >= 17

## インストール
- **IOS/TvOS AppStore**: (検索キーワード：karing vpn)
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

### よくある質問 (FAQ)

> [FAQ|ja](https://karing.app/en/faq/)

## 予定 (Todos)
- サポート予定のプラットフォーム：
  - linux | [linglong](https://linglong.dev/)
- グローバル化（多言語対応）
  - Karing のグローバル化を支援していただける場合は、[Telegram](https://t.me/ovowe) までご連絡ください。

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
[イシューの報告を歓迎します！](https://github.com/KaringX/karing/issues)

## 寄付
![donate](./README_assets/img/donate-usdt.jpg)

## プロジェクト
### 謝辞：Karing は以下のプロジェクトなどに基づいているか、インスピレーションを受けています：

- [flutter](https://flutter.dev/): モバイルやその他のプラットフォーム向けの美しいアプリを簡単かつ迅速に構築できます。
- [singbox](https://sing-box.sagernet.org/): ユニバーサルプロキシプラットフォーム。
- [Meta-Docs](https://wiki.metacubex.one/config/): Clash.Meta ドキュメント

### Karing チーム：
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)
