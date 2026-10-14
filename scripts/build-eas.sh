#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────────
# SK Jurídico v1.5.0 — Build APK via EAS (Expo Application Services)
#
# Alternativa ao Android Studio: usa o serviço de build na nuvem da Expo.
# Gera APK/AAB sem precisar de Android SDK instalado localmente.
#
# Pré-requisitos:
#   1. Conta gratuita em https://expo.dev
#   2. npm install -g @expo/eas-cli
#   3. eas login
# ──────────────────────────────────────────────────────────────────────────────
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$SCRIPT_DIR/.."

cd "$ROOT"

echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║         SK Jurídico — Build APK via EAS Cloud            ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""

# ── Verificar EAS CLI ─────────────────────────────────────────────────────────
if ! command -v eas &> /dev/null; then
  echo "▶ Instalando EAS CLI..."
  npm install -g @expo/eas-cli
fi

echo "  EAS CLI: $(eas --version)"

# ── Verificar login ───────────────────────────────────────────────────────────
echo ""
echo "▶ Verificando login EAS..."
if ! eas whoami &> /dev/null; then
  echo "  Faça login na Expo:"
  eas login
fi
echo "  Usuário: $(eas whoami 2>/dev/null)"

# ── Compilar frontend ─────────────────────────────────────────────────────────
echo ""
echo "▶ Compilando frontend React..."
pnpm --filter @workspace/assistente-juridico run build

# ── Sincronizar com Capacitor Android ────────────────────────────────────────
echo ""
echo "▶ Sincronizando Capacitor Android..."
if ! command -v npx &> /dev/null; then
  echo "❌ npx não encontrado"
  exit 1
fi

if [ ! -d "android" ]; then
  echo "  Inicializando projeto Android..."
  npx cap add android
fi

npx cap sync android

# ── Build via EAS ─────────────────────────────────────────────────────────────
echo ""
PROFILE="${EAS_PROFILE:-preview}"
echo "▶ Iniciando build EAS (perfil: $PROFILE)..."
echo "  Perfiles disponíveis: development (APK debug), preview (APK release), production (AAB)"
echo ""

case "$PROFILE" in
  development)
    echo "  Building APK de desenvolvimento..."
    eas build --platform android --profile development --non-interactive
    ;;
  preview)
    echo "  Building APK de preview (release)..."
    eas build --platform android --profile preview --non-interactive
    ;;
  production)
    echo "  Building AAB de produção (Google Play)..."
    eas build --platform android --profile production --non-interactive
    ;;
  *)
    echo "  Building com perfil personalizado: $PROFILE"
    eas build --platform android --profile "$PROFILE" --non-interactive
    ;;
esac

echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║                                                          ║"
echo "║  Build enviado para a nuvem EAS!                        ║"
echo "║  Acompanhe em: https://expo.dev                         ║"
echo "║                                                          ║"
echo "║  Quando pronto, o APK ficará disponível para download   ║"
echo "║  direto no painel do EAS.                               ║"
echo "║                                                          ║"
echo "╚══════════════════════════════════════════════════════════╝"
