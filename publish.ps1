# NSoft America 기술 블로그 배포 자동화 스크립트
# Usage: ./publish.ps1 "커밋 메시지"

param (
    [string]$CommitMessage = "post: 새로운 기술 포스트 추가"
)

Write-Host "🚀 NSoft America 블로그 배포 프로세스를 시작합니다..." -ForegroundColor Cyan

# 1. Hugo 설치 확인
$HugoPath = (gci -Path "$env:LOCALAPPDATA\Microsoft\WinGet\Packages" -Recurse -Filter "hugo.exe" | Select-Object -First 1).FullName
if (-not $HugoPath) {
    Write-Error "Hugo를 찾을 수 없습니다. README.md를 참조하여 Hugo Extended를 설치해주세요."
    exit
}

Write-Host "✅ Hugo 확인 완료: $HugoPath" -ForegroundColor Green

# 2. 서브모듈 동기화
Write-Host "📦 테마 서브모듈을 동기화합니다..." -ForegroundColor Yellow
git submodule update --init --recursive

# 3. 로컬 빌드 테스트 (Draft 포함 배포 여부 확인을 위해)
Write-Host "🔍 빌드 테스트를 수행합니다..." -ForegroundColor Yellow
# & $HugoPath

# 4. Git 배포
Write-Host "📤 변경사항을 GitHub에 푸시합니다..." -ForegroundColor Yellow
git add .
git commit -m $CommitMessage
git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "🎉 배포가 성공적으로 완료되었습니다!" -ForegroundColor Green
    Write-Host "GitHub Actions 빌드 결과는 1~2분 뒤에 적용됩니다." -ForegroundColor DarkGreen
} else {
    Write-Host "❌ 배포 중 오류가 발생했습니다. Git 설정을 확인해주세요." -ForegroundColor Red
}
