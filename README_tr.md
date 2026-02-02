<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - Basit ve Güçlü proxy aracı
  <br>
</h1>

<h3 align="center">
<a href="https://github.com/flutter/flutter">flutter</a> tabanlı bir <a href="https://github.com/SagerNet/sing-box">singbox</a> GUI.
</h3>

[English](./README.md) | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | [日本語](./README_ja.md) | [한국어](./README_ko.md) | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | [Tiếng Việt](./README_vi.md) | Türkçe | [Русский](./README_ru.md) | [فارسی](./README_fa.md) | [العربية](./README_ar.md) | [Português](./README_pt.md) | [Українська](./README_uk.md) | [Polski](./README_pl.md) | [اردو](./README_ur.md) | [Svenska](./README_sv.md) | [Norsk](./README_no.md) | [Nederlands](./README_nl.md) | [हिन्दी](./README_hi.md) | [Ελληνικά](./README_el.md) | [Dansk](./README_da.md) | [বাংলা](./README_bn.md)

### Not: Karing, herhangi bir video platformunda Karing ile ilgili bir kanal açmamıştır.

## Özellikler
- Clash, V2ray/V2fly, Sing-box, Shadowsocks, Sub, Github Abonelikleri ile uyumludur.
  - Tam `clash` yapılandırması desteklenir, Kısmi `clash.meta` yapılandırması desteklenir.

- Birden fazla abonelik kaynağına uygulanan bir dizi yönlendirme kuralı, verimli düğümleri otomatik olarak seçer.
- Özel yönlendirme kural gruplarını ve düğüm gruplarını destekler.
  - Acemi kullanıcılar için varsayılan yönlendirme kural gruplarını özelleştirir - kutudan çıktığı gibi kullanıma hazır.
  - Yerleşik geo-IP, geo-site, ACL ve [diğer kural kümeleri](https://github.com/KaringX/karing-ruleset/).

- Yedekleme ve senkronizasyon, tek bir yapılandırma ile birden fazla cihazı senkronize etme.
  - iCloud senkronizasyonunu destekler [IOS/MacOS].
  - Yerel alan ağı içinde senkronizasyonu destekler.
  - WebDAV'ı destekler.
  - ZIP dosyalarını içe/dışa aktarmayı destekler.

- [Modifiye edilmiş sing-box çekirdeği](https://github.com/KaringX/sing-box) için yerleşik destek.
- Daha basit yapılandırma için başlangıç modu sunar.
- Daha fazla platformu destekleme planı.

## Tanıtım
<details>
<summary>Tüm tanıtımları görüntüle

### Önerilen VPN Sağlayıcısı

[Doggygo VPN —— Uzmanlar için Hızlandırma](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)

- Yüksek performanslı denizaşırı sağlayıcı (Airport), uluslararası ekip, kapanma riski yok.
- Özel bağlantı ile kayıt 3 gün ve günlük 1G trafik verir [Ücretsiz deneme](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053).
- İndirimli paketler aylık sadece 15.8 yuan, 160G trafik, yıllık ödemede %20 indirim.
- Dünyada `Hysteria2` protokolünü destekleyen ilk, küme yük dengeleme tasarımı, yüksek hızlı özel hat, son derece düşük gecikme süresi, gece yoğunluğunu görmezden gelir, 4K anında açılır.
- Akış medyasının ve ChatGPT'nin kilidini açar.

[👉 Günlük güncellenen daha fazla fırsat](https://1.x31415926.top/)

</summary>

### 🤝 VPN Sağlayıcıları İçin İş Birliği Duyurusu
- 👉 [İletişim bilgileri ve iş birliği formları](https://karing.app/blog/isp/cooperation#for-vpn-providers-from-other-regions) 👈
</details>

## Sistem Gereksinimleri
- Windows >= 10 (sadece 64-bit)
- Android >= 8 (arm64-v8a, armeabi-v7a)
- Linux (sadece 64-bit)
- IOS >= 15
- MacOS >= 12 (Intel, Apple Silicon)
- TvOS >= 17

## Kurulum
- **IOS/TvOS AppStore**: (Arama Anahtar Kelimeleri: karing vpn)
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

### SSS (FAQ)

> [FAQ|tr](https://karing.app/en/faq/)

## Yapılacaklar (Todos)
- Desteklenecek platformlar:
  - linux | [linglong](https://linglong.dev/)
- Küreselleşme (çoklu dil)
  - Karing küreselleşmesini desteklemek için bizimle çalışmaya istekliyseniz, lütfen [Telegram](https://t.me/ovowe) üzerinden bizimle iletişime geçin.

## Ekran Görüntüleri

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

## Katkılar
[Hata bildirmekten çekinmeyin!](https://github.com/KaringX/karing/issues)

## Bağış Yap
![donate](./README_assets/img/donate-usdt.jpg)

## Projeler
### Teşekkür: Karing bu projelere dayanmaktadır veya bunlardan ilham almıştır:

- [flutter](https://flutter.dev/): mobil ve ötesi için güzel uygulamalar oluşturmayı kolay ve hızlı hale getirir.
- [singbox](https://sing-box.sagernet.org/): Evrensel proxy platformu.
- [Meta-Docs](https://wiki.metacubex.one/config/): Clash.Meta belgeleri

### Karing Ekibi:
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)
