# SK Juridico IA v1.5.0

Assistente juridico com IA para advogados brasileiros.
100% standalone -- sem dependencia da Replit ou de nenhum servico externo.

## Modos de uso

### Opcao 1 -- Local sem banco (mais simples)
```bash
cp .env.example .env
# Deixe LOCAL_MODE=1 no .env (padrao)
pnpm install
pnpm --filter @workspace/api-server run build
bash scripts/start-servidor.sh
# Acesse: http://localhost:8080
# Dados salvos em: sk-juridico-local-data.json
```

### Opcao 2 -- Docker com PostgreSQL
```bash
cp .env.example .env
# Edite .env: remova LOCAL_MODE=1, configure DATABASE_URL
docker compose up -d
# Acesse: http://localhost
```

### Opcao 3 -- Desktop (Windows/macOS/Linux)
```bash
pnpm --filter @workspace/api-server run build
pnpm --filter @workspace/assistente-juridico run build
bash scripts/build-desktop.sh
# Executavel em: artifacts/desktop/dist-electron/
# O executavel inclui o backend -- nao precisa de nada instalado
```

### Opcao 4 -- APK Android
```bash
bash scripts/build-apk.sh    # com Android Studio
bash scripts/build-eas.sh    # sem Android Studio (nuvem EAS)
```

## Configurar IA
1. Abra o app -> Configuracoes -> Chaves de API
2. Cole sua chave Gemini (gratuita em aistudio.google.com) ou OpenAI/Groq
3. Selecione o modelo e comece a usar

## Templates de Peticao
Acesse o menu Templates no app para ver 18+ modelos prontos:
Civel, Criminal, Trabalhista, Familia, Previdenciario, Tributario, Constitucional

## Documentacao Completa
Veja MANUAL.md -- 28 secoes com instrucoes detalhadas.

## Stack
React 18 + TipTap v3 + Express 5 + Drizzle ORM + PostgreSQL (ou arquivo local)
Electron + Capacitor + EAS + esbuild + pnpm monorepo
Sem dependencia da Replit -- funciona 100% localmente
