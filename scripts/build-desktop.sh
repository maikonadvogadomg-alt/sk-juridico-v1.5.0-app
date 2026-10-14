#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────────
# SK Jurídico v1.5.0 — Build Executável Desktop (Electron)
#
# Gera executável standalone para Windows (.exe), macOS (.dmg) ou Linux (.AppImage)
# que inclui o backend Express + frontend React em um único arquivo.
#
# Pré-requisitos: Node.js 20+, pnpm
# ──────────────────────────────────────────────────────────────────────────────
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$SCRIPT_DIR/.."

cd "$ROOT"

echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║      SK Jurídico — Build Executável Desktop              ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""

# ── 1. Build do backend ───────────────────────────────────────────────────────
echo "▶ Compilando API backend..."
pnpm --filter @workspace/api-server run build

# ── 2. Build do frontend ──────────────────────────────────────────────────────
echo ""
echo "▶ Compilando frontend React..."
pnpm --filter @workspace/assistente-juridico run build

# ── 3. Instalar dependências do Electron ─────────────────────────────────────
echo ""
echo "▶ Instalando dependências do Electron..."
cd "$ROOT/artifacts/desktop"
npm install

# ── 4. Build do executável ───────────────────────────────────────────────────
echo ""
PLATFORM="${DESKTOP_PLATFORM:-$(uname -s | tr '[:upper:]' '[:lower:]')}"
echo "▶ Gerando executável para: $PLATFORM"
echo ""

case "$PLATFORM" in
  win*|windows|win32)
    npm run build:win
    ;;
  darwin|mac|macos)
    npm run build:mac
    ;;
  linux)
    npm run build:linux
    ;;
  all)
    npm run build:all
    ;;
  *)
    echo "ℹ️  Plataforma não detectada. Gerando para todas..."
    npm run build:all
    ;;
esac

# ── 5. Resultado ──────────────────────────────────────────────────────────────
echo ""
DIST_DIR="$ROOT/artifacts/desktop/dist-electron"
if [ -d "$DIST_DIR" ]; then
  echo "✅ Executáveis gerados em: artifacts/desktop/dist-electron/"
  ls -lh "$DIST_DIR" | grep -E "\.(exe|dmg|AppImage|deb|snap)$" | awk '{print "   " $5, $9}' || true
fi

echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║                   Build concluído!                       ║"
echo "║                                                          ║"
echo "║  Windows: dist-electron/SK Juridico Setup *.exe          ║"
echo "║  macOS  : dist-electron/SK Juridico *.dmg                ║"
echo "║  Linux  : dist-electron/SK Juridico *.AppImage           ║"
echo "╚══════════════════════════════════════════════════════════╝"
