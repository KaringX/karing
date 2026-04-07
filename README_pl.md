<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - Proste i potężne narzędzie proxy
  <br>
</h1>

<h3 align="center">
GUI dla <a href="https://github.com/SagerNet/sing-box">singbox</a> oparte na <a href="https://github.com/flutter/flutter">flutter</a>.
</h3>

[English](./README.md) | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | [日本語](./README_ja.md) | [한국어](./README_ko.md) | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | [Tiếng Việt](./README_vi.md) | [Türkçe](./README_tr.md) | [Русский](./README_ru.md) | [فارسی](./README_fa.md) | [العربية](./README_ar.md) | [Português](./README_pt.md) | [Українська](./README_uk.md) | Polski | [اردو](./README_ur.md) | [Svenska](./README_sv.md) | [Norsk](./README_no.md) | [Nederlands](./README_nl.md) | [हिन्दी](./README_hi.md) | [Ελληνικά](./README_el.md) | [Dansk](./README_da.md) | [বাংলা](./README_bn.md) | [ไทย](./README_th.md) | [ਪੰਜਾਬੀ](./README_pa.md)

### Uwaga: Karing nie otworzył żadnego kanału związanego z Karing na żadnej platformie wideo.

## Cechy
- Kompatybilny z subskrypcjami Clash, V2ray/V2fly, Sing-box, Shadowsocks, Sub, Github.
  - Pełna obsługa konfiguracji `clash`, częściowa obsługa konfiguracji `clash.meta`.

- Zestaw reguł routingu stosowany do wielu źródeł subskrypcji automatycznie wybiera wydajne węzły.
- Obsługuje niestandardowe grupy reguł routingu i grupy węzłów.
  - Dostosowuje domyślne grupy reguł routingu dla początkujących użytkowników - gotowe do użycia zaraz po zainstalowaniu.
  - Wbudowane geo-IP, geo-site, ACL i [inne zestawy reguł](https://github.com/KaringX/karing-ruleset/).

- Kopia zapasowa i synchronizacja, synchronizacja wielu urządzeń z jedną konfiguracją.
  - Obsługuje synchronizację iCloud [IOS/MacOS].
  - Obsługuje synchronizację w sieci lokalnej.
  - Obsługuje WebDAV.
  - Obsługuje importowanie/eksportowanie plików ZIP.

- Wbudowane wsparcie dla [zmodyfikowanego jądra sing-box](https://github.com/KaringX/sing-box).
- Wprowadza tryb dla początkujących dla prostszej konfiguracji.
- Plan wsparcia dla większej liczby platform.

## Promocja
<details>
<summary>Zobacz wszystkie promocje

### Zalecany VPN

[Doggygo VPN —— Przyspieszenie dla ekspertów](https://2.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)

- Wysokowydajny zagraniczny dostawca (Airport), międzynarodowy zespół, brak ryzyka zamknięcia.
- Rejestracja przez ekskluzywny link daje 3 dni i 1 GB dziennego transferu [Bezpłatna wersja próbna](https://2.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053).
- Pakiety zniżkowe już od 15,8 juańskich miesięcznie, 160 GB transferu, 20% zniżki przy płatności rocznej.
- Pierwszy na świecie z obsługą protokołu `Hysteria2`, konstrukcja równoważenia obciążenia klastra, szybka linia dedykowana, niezwykle niskie opóźnienia, ignoruje nocne szczyty, błyskawiczne 4K.
- Odblokowuje media strumieniowe i ChatGPT.

[👉 Więcej ofert aktualizowanych codziennie](https://2.x31415926.top/)

</summary>

### 🤝 Ogłoszenie o współpracy dla dostawców VPN
- 👉 [Informacje kontaktowe i formy współpracy](https://karing.app/blog/isp/cooperation#for-vpn-providers-from-other-regions) 👈
</details>

## Wymagania systemowe
- Windows >= 10 (tylko 64-bit)
- Android >= 8 (arm64-v8a, armeabi-v7a)
- Linux (tylko 64-bit)
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
  - `brew install karing`

### FAQ (Często zadawane pytania)

> [FAQ|pl](https://karing.app/en/faq/)


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
[Zapraszamy do zgłaszania błędów!](https://github.com/KaringX/karing/issues)

## Przekaż darowiznę
![donate](./README_assets/img/donate-usdt.jpg)

## Projekty
### Podziękowania: Karing opiera się na tych projektach lub jest nimi zainspirowany:

- [flutter](https://flutter.dev/): sprawia, że budowanie pięknych aplikacji na urządzenia mobilne i nie tylko jest łatwe i szybkie.
- [singbox](https://sing-box.sagernet.org/): Uniwersalna platforma proxy.
- [Meta-Docs](https://wiki.metacubex.one/config/): dokumentacja Clash.Meta

### Zespół Karing:
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)
