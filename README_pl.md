<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - Proste i potężne narzędzie proxy
  <br>
</h1>

<h3 align="center">
Interfejs GUI dla <a href="https://github.com/SagerNet/sing-box">sing-box</a> oparty na <a href="https://github.com/flutter/flutter">flutter</a>.
</h3>

English | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | [日本語](./README_ja.md) | [한국어](./README_ko.md) | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | [Tiếng Việt](./README_vi.md) | [Türkçe](./README_tr.md) | [Русский](./README_ru.md) | [فارسی](./README_fa.md) | [العربية](./README_ar.md) | [Português](./README_pt.md) | [Українська](./README_uk.md) | Polski

### Note: 

## Funkcje
- Kompatybilny z subskrypcjami Clash, V2ray/V2fly, Sing-box, Shadowsocks, Sub, Github.
  - Pełna obsługa konfiguracji `clash`, częściowa obsługa konfiguracji `clash.meta`.

- Zestaw reguł routingu stosowanych do wielu źródeł subskrypcji automatycznie wybiera wydajne węzły.
- Obsługuje niestandardowe grupy reguł routingu i grupy węzłów.
  - Dostosowuje domyślne grupy reguł routingu dla początkujących użytkowników - gotowy do użycia zaraz po zainstalowaniu.
  - Wbudowane geo-IP, geo-site, ACL i [inne zestawy reguł](https://github.com/KaringX/karing-ruleset/).

- Kopia zapasowa i synchronizacja, synchronizacja wielu urządzeń za pomocą jednej konfiguracji.
  - Obsługuje synchronizację iCloud [IOS/MacOS].
  - Obsługuje synchronizację w sieci lokalnej (LAN).
  - Obsługuje WebDAV.
  - Obsługuje importowanie/eksportowanie plików ZIP.

- Wbudowane wsparcie dla [zmodyfikowanego rdzenia sing-box](https://github.com/KaringX/sing-box).
- Wprowadza tryb początkujący dla prostszej konfiguracji.
- Plan wsparcia dla większej liczby platform.

## Promocja
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

## Wymagania systemowe
- Windows >= 10 (tylko 64-bitowe)
- Android >= 8 (arm64-v8a, armeabi-v7a)
- Linux (tylko 64-bitowe)
- IOS >= 15
- MacOS >= 12 (Intel, Apple Silicon)
- TvOS >= 17

## Instalacja
- **IOS/TvOS AppStore**: (Słowa kluczowe wyszukiwania: karing vpn)
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

## Zrzuty ekranu

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

## Wkład
[Zapraszamy do zgłaszania problemów!](https://github.com/KaringX/karing/issues)

## Darowizny
![donate](./README_assets/img/donate-usdt.jpg)

## Projekty
### Podziękowania: Karing opiera się na tych projektach lub jest nimi zainspirowany:
- [flutter](https://flutter.dev/): ułatwia i przyspiesza budowanie pięknych aplikacji na urządzenia mobilne i nie tylko.
- [singbox](https://sing-box.sagernet.org/): Uniwersalna platforma proxy.
- [Meta-Docs](https://wiki.metacubex.one/config/): Dokumentacja Clash.Meta

### Zespół Karing:
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)
