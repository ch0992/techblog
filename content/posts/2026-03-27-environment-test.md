---
title: "NSoft 블로그 환경 및 자동 배포 테스트"
date: 2026-03-27T14:30:00-05:00
weight: 100
draft: false
tags: ["test", "deployment", "hugo"]
categories: ["Environment"]
description: "Hugo Extended 설치 및 배포 자동화 스크립트 기능 테스트를 위한 포스트입니다."
author: "Antigravity AI"
---

## Overview
이 포스트는 NSoft America 기술 블로그의 **새로운 빌드 및 배포 환경**이 정상적으로 작동하는지 확인하기 위해 작성된 테스트 글입니다. 

### 테스트 항목
1.  **Hugo Extended 설치**: 로컬 빌드 엔진의 정상 작동 여부 
2.  **서브모듈 동기화**: 테마(PaperMod) 리소스의 올바른 연결 
3.  **배포 자동화**: `publish.ps1` 스크립트를 이용한 GitHub 푸시 및 CI/CD 연동 

---

## 🛠️ 테스트 환경 상세 

현재 환경에는 **Hugo v0.159.1 (Extended)** 버전이 설치되어 있으며, PowerShell을 통한 자동화 배포 환경이 구성되어 있습니다. 

```powershell
# 이 명령어를 통해 배포를 테스트합니다.
./publish.ps1 "test: 시스템 배포 테스트"
```

---

## 🚀 결과 검토 
본 글이 실시간 사이트([nsoft-america-inc.github.io](https://nsoft-america-inc.github.io/))에 2분 내로 나타난다면 모든 환경 설정이 **완벽하게 성공**한 것입니다. 

이제 NSoft America 엔지니어분들은 자유롭게 지식을 공유하실 준비가 되었습니다!
