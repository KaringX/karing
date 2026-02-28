<h1 align="center">
  <img src="./README_assets/img/mascot.jpg" alt="Karing" width="256" />
  <br>
  Karing - 간편하고 강력한 프록시 유틸리티
  <br>
</h1>

<h3 align="center">
<a href="https://github.com/flutter/flutter">flutter</a> 기반의 <a href="https://github.com/SagerNet/sing-box">singbox</a> GUI.
</h3>

[English](./README.md) | [简体中文](./README_cn.md) | [繁體中文](./README_tw.md) | [日本語](./README_ja.md) | 한국어 | [Español](./README_es.md) | [Français](./README_fr.md) | [Deutsch](./README_de.md) | [Italiano](./README_it.md) | [Tiếng Việt](./README_vi.md) | [Türkçe](./README_tr.md) | [Русский](./README_ru.md) | [فارسی](./README_fa.md) | [العربية](./README_ar.md) | [Português](./README_pt.md) | [Українська](./README_uk.md) | [Polski](./README_pl.md) | [اردو](./README_ur.md) | [Svenska](./README_sv.md) | [Norsk](./README_no.md) | [Nederlands](./README_nl.md) | [हिन्दी](./README_hi.md) | [Ελληνικά](./README_el.md) | [Dansk](./README_da.md) | [বাংলা](./README_bn.md)

### 참고: Karing은 어떠한 영상 플랫폼에서도 공식 채널을 운영하고 있지 않습니다.

## 주요 기능
- Clash, V2ray/V2fly, Sing-box, Shadowsocks, Sub, Github 구독과 호환됩니다.
  - `clash` 설정을 완벽하게 지원하며, `clash.meta` 설정은 부분적으로 지원합니다.

- 여러 구독 소스에 적용되는 라우팅 규칙 세트를 통해 효율적인 노드를 자동으로 선택합니다.
- 사용자 정의 라우팅 규칙 그룹 및 노드 그룹을 지원합니다.
  - 초보 사용자를 위해 기본 라우팅 규칙 그룹을 제공하여 즉시 사용이 가능합니다.
  - geo-IP, geo-site, ACL 및 [기타 규칙 세트](https://github.com/KaringX/karing-ruleset/)가 내장되어 있습니다.

- 백업 및 동기화 기능을 통해 단일 설정으로 여러 기기를 동기화할 수 있습니다.
  - iCloud 동기화 지원 [IOS/MacOS].
  - 로컬 네트워크 내 동기화 지원.
  - WebDAV 지원.
  - ZIP 파일 가져오기/내보내기 지원.

- [수정된 sing-box 코어](https://github.com/KaringX/sing-box)를 기본적으로 지원합니다.
- 더 쉬운 설정을 위한 초보자 모드를 도입했습니다.
- 더 많은 플랫폼을 지원할 계획입니다.

## 홍보
<details>
<summary>모든 홍보 보기

### 추천 VPN/프록시 업체

[Doggygo VPN —— 기술 중심의 고성능 업체](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)

- 고성능 해외 업체, 해외 팀 운영, 서비스 중단 위험 없음
- 전용 링크로 가입 시 3일간 매일 1G 트래픽 [무료 체험](https://1.x31415926.top/redir.html?url=aHR0cHM6Ly93d3cuZGc2LnRvcC8jL3JlZ2lzdGVyP2NvZGU9bEZINGlpOUQ=&i=3eb&t=1723644053)
- 실속형 패키지 월 15.8위안부터, 160G 트래픽, 연 결제 시 20% 할인
- 세계 최초 `Hysteria2` 프로토콜 지원, 클러스터 부하 분산 설계, 고속 전용선, 초저지연, 피크 시간대 끊김 없음, 4K 즉시 재생
- 스트리밍 서비스 및 ChatGPT 차단 해제

[👉더 많은 업체 혜택 매일 업데이트](https://1.x31415926.top/)

</summary>

### 🤝VPN 제공업체 협력 공지
- 👉[연락처 및 협력 방식](https://karing.app/blog/isp/cooperation#for-vpn-providers-from-other-regions)👈
</details>

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
  - `brew install karing`

### 자주 묻는 질문 (FAQ)

> [FAQ|ko](https://karing.app/en/faq/)


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
[이슈 제보를 환영합니다!](https://github.com/KaringX/karing/issues)

## 후원
![donate](./README_assets/img/donate-usdt.jpg)

## 프로젝트
### 감사 인사: Karing은 다음 프로젝트들을 기반으로 하거나 영감을 받았습니다:

- [flutter](https://flutter.dev/): 모바일 및 다양한 플랫폼을 위한 아름다운 앱을 쉽고 빠르게 구축할 수 있게 해줍니다.
- [singbox](https://sing-box.sagernet.org/): 범용 프록시 플랫폼.
- [Meta-Docs](https://wiki.metacubex.one/config/): Clash.Meta 문서

### Karing 팀:
- [Karing](https://karing.app): https://karing.app
- [Clash Mi](https://clashmi.app/): https://clashmi.app/
- [sing-poet](https://github.com/KaringX/sing-poet)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=KaringX/karing&type=Date)](https://star-history.com/#KaringX/karing&Date)
