<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - 간단하고 강력한 프록시 유틸리티
  <br>
</h1>

<h3 align="center">
<a href="https://github.com/flutter/flutter">flutter</a> 기반의 <a href="https://github.com/SagerNet/sing-box">sing-box</a> GUI.
</h3>

English | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | [日本語](./README_ja.md) | 한국어 | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | [Tiếng Việt](./README_vi.md) | [Türkçe](./README_tr.md) | [Русский](./README_ru.md) | [فارسی](./README_fa.md) | [العربية](./README_ar.md) | [Português](./README_pt.md) | [Українська](./README_uk.md) | [Polski](./README_pl.md)

### Note: 

## 특징
- Clash, V2ray/V2fly, Sing-box, Shadowsocks, Sub, Github 구독과 호환됩니다.
  - 전체 `clash` 설정 지원, 일부 `clash.meta` 설정 지원.

- 여러 구독 소스에 적용되는 일련의 라우팅 규칙을 통해 효율적인 노드를 자동으로 선택합니다.
- 사용자 정의 라우팅 규칙 그룹 및 노드 그룹 지원.
  - 초보 사용자를 위한 기본 라우팅 규칙 그룹 사용자 정의 - 설치 즉시 사용 가능.
  - 내장된 geo-IP, geo-site, ACL 및 [기타 규칙 세트](https://github.com/KaringX/karing-ruleset/) 지원.

- 백업 및 동기화, 단일 설정으로 여러 장치 동기화.
  - iCloud 동기화 지원 [IOS/MacOS].
  - 로컬 영역 네트워크 내 동기화 지원.
  - WebDAV 지원.
  - ZIP 파일 가져오기/내보내기 지원.

- [수정된 sing-box 코어](https://github.com/KaringX/sing-box) 기본 지원.
- 더 간단한 구성을 위한 초보자 모드 도입.
- 더 많은 플랫폼 지원 계획.

## 시스템 요구 사항
- Windows >= 10 (64비트 전용)
- Android >= 8 (arm64-v8a, armeabi-v7a)
- Linux (64비트 전용)
- IOS >= 15
- MacOS >= 12 (Intel, Apple Silicon)
- TvOS >= 17

## 설치
- **IOS/TvOS AppStore**: (검색어: karing vpn)
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

### 자주 묻는 질문 (FAQ)

> [FAQ|en](https://karing.app/en/faq/)

## Todos
- Platform to be supported:
  - linux | [linglong](https://linglong.dev/)
- Globalization(multi-language)
  - If you are willing to work with us to support Karing globalization, please contact us [Telegram](https://t.me/ovowe)

## 스크린샷

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

## 기여
[버그 보고를 환영합니다!](https://github.com/KaringX/karing/issues)

## 기부
![donate](./README_assets/img/donate-usdt.jpg)

## 프로젝트
### 감사 인사: Karing은 다음 프로젝트를 기반으로 하거나 영감을 받았습니다:
- [flutter](https://flutter.dev/): 모바일 및 그 이상의 플랫폼을 위한 아름다운 앱을 쉽고 빠르게 구축할 수 있게 해줍니다.
- [singbox](https://sing-box.sagernet.org/): 유니버설 프록시 플랫폼.
- [Meta-Docs](https://wiki.metacubex.one/config/): Clash.Meta 문서

### Karing 팀:
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)
