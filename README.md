# NSoft America Tech Blog

NSoft America 공식 기술 블로그 레포지토리입니다. 
본 사이트는 **Hugo (Static Site Generator)**와 **GitHub Pages**를 통해 운영되며, 모든 기술적 노하우와 팀의 지식을 공유하는 것을 목적으로 합니다.

- **Live URL**: [https://nsoft-america-inc.github.io/](https://nsoft-america-inc.github.io/)

---

## 🚀 Quick Start: 환경 설정

블로그 기여를 위해 로컬 환경에 **Hugo Extended 버전**이 설치되어 있어야 합니다.

### Mac
```bash
brew install hugo
```

### Windows
```powershell
winget install Hugo.Hugo.Extended
```

### 필수: 테마 서브모듈 초기화
레포지토리 클론 후 반드시 아래 명령어를 실행하여 테마 파일을 가져와야 합니다.
```bash
git submodule update --init --recursive
```

---

## ✍️ 포스팅 방법 (Workflow)

모든 작업은 `main` 브랜치를 기준으로 진행됩니다.

1.  **새 포스트 생성** (날짜 prefix와 영문 kebab-case 파일명 권장)
    ```bash
    hugo new posts/2026-03-24-my-new-post.md
    ```
2.  **콘텐츠 작성 및 메타데이터 설정**
    - `content/posts/파일명.md` 파일을 열어 내용을 작성합니다.
    - **중요**: 상단 Front Matter에서 `draft: false`로 설정해야 배포됩니다.
3.  **로컬 미리보기**
    ```bash
    hugo server
    ```
    - `http://localhost:1313` 에서 실물 확인
4.  **배포 (Push)**
    ```bash
    git add .
    git commit -m "post: 새로운 글 추가"
    git push origin main
    ```
    - `main` 브랜치에 푸시하면 GitHub Actions가 1~2분 내로 실서비스에 배포합니다.

---

## 📌 주요 컨벤션 (Conventions)

- **Front Matter**: 반드시 **YAML(`---`)** 형식을 사용하세요.
- **이미지**: `static/images/` 폴더에 저장 후 `![alt](/images/filename.png)` 형식으로 참조하세요.
- **레이아웃**: 홈 화면 카드 정렬을 위해 `weight` 속성 사용을 권장합니다.

상세한 기여 가이드는 [NSoft America 기술 블로그 기여 가이드](https://nsoft-america-inc.github.io/posts/2026-03-24-nsoft-america-blog-guide/)를 참조하세요.

---

## 📂 프로젝트 구조
- `archetype/`: 새 포스트 생성 시 적용되는 기본 템플릿
- `content/`: 블로그 포스트 및 정적 페이지(About 등) 마크다운 파일
- `static/`: 이미지, 폰트 등 정적 리소스
- `themes/`: PaperMod 테마 (서브모듈)
- `hugo.toml`: 사이트 전역 설정 파일

---

## 🤝 기여 안내
본 블로그는 NSoft America 팀원 모두에게 열려 있습니다. 문의사항이나 권한 요청은 조직 관리자에게 연락 바랍니다.

&copy; 2026 NSoft America. Powered by Hugo & PaperMod.
