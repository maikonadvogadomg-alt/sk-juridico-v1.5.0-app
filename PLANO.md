# 📋 Plano do projeto: sk-juridico-v1.5.0

_Gerado em 14/10/2026, 02:50:12 — sem IA, lendo os arquivos._

## 📊 Visão geral
| Item | Valor |
|---|---|
| Arquivos | 216 |
| Linhas | 46.427 |
| Telas/páginas | 76 |
| Rotas do backend | 175 |
| Chamadas do app | 145 |
| Tabelas do banco | 20 |
| Variáveis de ambiente | 28 |

**Linguagens:** TypeScript (React) (90), TypeScript (33), Imagem (22), JSON (18), Outros (13), JavaScript (10), YAML (7), HTML (6), Shell (5), Imagem SVG (4), Markdown (4), CSS (2), Ícone (2)

## 🧩 Apps dentro deste projeto
- artifacts/api-server (@workspace/api-server)
- artifacts/assistente-juridico (@workspace/assistente-juridico)
- artifacts/desktop (sk-juridico-desktop)
- lib/db (@workspace/db)
- lib/sync-storage (@workspace/sync-storage)

## 💡 O que fazer (em ordem)
1. 🧹 Tirar a Replit de 7 arquivo(s) (🏗️ Preparar → Fazer tudo)
2. 🖥️ O projeto tem backend próprio: para funcionar fora da Replit ele precisa ficar ligado num servidor (Render, Railway, Vercel) ou virar funções
3. 🔐 Criar um .env.example com: APP_PASSWORD, BASE_PATH, BIRDID_CLIENT_ID, BIRDID_CLIENT_SECRET, CAPACITOR_SERVER_URL, DATABASE_URL, DATAJUD_API_KEY, ELECTRON_DATA_PATH, ELECTRON_MODE, FCM_PROJECT_ID, FCM_SERVER_KEY, GOOGLE_DRIVE_ACCESS_TOKEN… (os valores você coloca no servidor, nunca no código)
4. 🗄️ Precisa de banco de dados (20 tabela(s)) — Neon ou Supabase servem, grátis

## 🚀 Por onde começa
- `artifacts/api-server/src/app.ts`
- `artifacts/api-server/src/index.ts`
- `artifacts/assistente-juridico/index.html`
- `artifacts/assistente-juridico/src/App.tsx`
- `artifacts/assistente-juridico/src/main.tsx`
- `artifacts/desktop/main.js`
- `index.html`
- `lib/db/src/index.ts`
- `lib/sync-storage/src/index.ts`

## ⌨️ Comandos (package.json)
| Pasta | Comando | O que roda |
|---|---|---|
| artifacts/api-server | `npm run dev` | `export NODE_ENV=development && pnpm run build && pnpm run start` |
| artifacts/api-server | `npm run build` | `node ./build.mjs` |
| artifacts/api-server | `npm run start` | `node --enable-source-maps ./dist/index.mjs` |
| artifacts/api-server | `npm run typecheck` | `tsc -p tsconfig.json --noEmit` |
| artifacts/assistente-juridico | `npm run dev` | `vite --config vite.config.ts --host 0.0.0.0` |
| artifacts/assistente-juridico | `npm run build` | `vite build --config vite.config.ts` |
| artifacts/assistente-juridico | `npm run serve` | `vite preview --config vite.config.ts --host 0.0.0.0` |
| artifacts/assistente-juridico | `npm run typecheck` | `tsc -p tsconfig.json --noEmit` |
| artifacts/desktop | `npm run start` | `electron .` |
| artifacts/desktop | `npm run dev` | `concurrently "node server.js" "electron . --dev"` |
| artifacts/desktop | `npm run build:win` | `electron-builder --win --x64` |
| artifacts/desktop | `npm run build:mac` | `electron-builder --mac` |
| artifacts/desktop | `npm run build:linux` | `electron-builder --linux AppImage deb` |
| artifacts/desktop | `npm run build:all` | `electron-builder --win --mac --linux` |
| lib/db | `npm run push` | `drizzle-kit push --config ./drizzle.config.ts` |
| lib/db | `npm run push-force` | `drizzle-kit push --force --config ./drizzle.config.ts` |
| lib/sync-storage | `npm run typecheck` | `tsc --noEmit` |
| . | `npm run desktop` | `electron .` |
| . | `npm run exe` | `electron-builder --win portable --publish never` |
| . | `npm run preinstall` | `sh -c 'rm -f package-lock.json yarn.lock; case "$npm_config_user_agent" in pnpm/*) ;; *) e` |
| . | `npm run build` | `pnpm run typecheck && pnpm -r --if-present run build` |
| . | `npm run typecheck:libs` | `tsc --build` |
| . | `npm run typecheck` | `pnpm run typecheck:libs && pnpm -r --filter "./artifacts/**" --filter "./scripts" --if-pre` |

## 📱 Telas e páginas
| Endereço | Arquivo |
|---|---|
| `/` | artifacts/assistente-juridico/src/App.tsx |
| `/jurisprudencia` | artifacts/assistente-juridico/src/App.tsx |
| `/assistente` | artifacts/assistente-juridico/src/App.tsx |
| `/playground` | artifacts/assistente-juridico/src/App.tsx |
| `/token` | artifacts/assistente-juridico/src/App.tsx |
| `/comparador` | artifacts/assistente-juridico/src/App.tsx |
| `/auditoria` | artifacts/assistente-juridico/src/App.tsx |
| `/consulta` | artifacts/assistente-juridico/src/App.tsx |
| `/painel` | artifacts/assistente-juridico/src/App.tsx |
| `/corporativo` | artifacts/assistente-juridico/src/App.tsx |
| `/pdpj` | artifacts/assistente-juridico/src/App.tsx |
| `/tramitacao` | artifacts/assistente-juridico/src/App.tsx |
| `/filtrador` | artifacts/assistente-juridico/src/App.tsx |
| `/previdenciario` | artifacts/assistente-juridico/src/App.tsx |
| `/robo-djen` | artifacts/assistente-juridico/src/App.tsx |
| `/codigo` | artifacts/assistente-juridico/src/App.tsx |
| `/comunicacoes` | artifacts/assistente-juridico/src/App.tsx |
| `/configuracoes` | artifacts/assistente-juridico/src/App.tsx |
| `/settings` | artifacts/assistente-juridico/src/App.tsx |
| `/ementas` | artifacts/assistente-juridico/src/App.tsx |
| `/historico` | artifacts/assistente-juridico/src/App.tsx |
| `/admin` | artifacts/assistente-juridico/src/App.tsx |
| `/prazos` | artifacts/assistente-juridico/src/App.tsx |
| `/assinatura` | artifacts/assistente-juridico/src/App.tsx |
| `/pje` | artifacts/assistente-juridico/src/App.tsx |
| `/escritorio` | artifacts/assistente-juridico/src/App.tsx |
| `/status` | artifacts/assistente-juridico/src/App.tsx |
| `/templates` | artifacts/assistente-juridico/src/App.tsx |
| `/` | assets/index-dpcc-epc.js |
| `/jurisprudencia` | assets/index-dpcc-epc.js |
| `/playground` | assets/index-dpcc-epc.js |
| `/token` | assets/index-dpcc-epc.js |
| `/comparador` | assets/index-dpcc-epc.js |
| `/auditoria` | assets/index-dpcc-epc.js |
| `/consulta` | assets/index-dpcc-epc.js |
| `/painel` | assets/index-dpcc-epc.js |
| `/corporativo` | assets/index-dpcc-epc.js |
| `/pdpj` | assets/index-dpcc-epc.js |
| `/tramitacao` | assets/index-dpcc-epc.js |
| `/filtrador` | assets/index-dpcc-epc.js |
| `/previdenciario` | assets/index-dpcc-epc.js |
| `/robo-djen` | assets/index-dpcc-epc.js |
| `/codigo` | assets/index-dpcc-epc.js |
| `artifacts/assistente-juridico/index.html` | artifacts/assistente-juridico/index.html |
| `/admin` | artifacts/assistente-juridico/src/pages/admin.tsx |
| `/assinatura` | artifacts/assistente-juridico/src/pages/assinatura.tsx |
| `/auditoria-financeira` | artifacts/assistente-juridico/src/pages/auditoria-financeira.tsx |
| `/codigo` | artifacts/assistente-juridico/src/pages/codigo.tsx |
| `/comparador-juridico` | artifacts/assistente-juridico/src/pages/comparador-juridico.tsx |
| `/comunicacoes-cnj` | artifacts/assistente-juridico/src/pages/comunicacoes-cnj.tsx |
| `/configuracoes` | artifacts/assistente-juridico/src/pages/configuracoes.tsx |
| `/consulta-corporativo` | artifacts/assistente-juridico/src/pages/consulta-corporativo.tsx |
| `/consulta-pdpj` | artifacts/assistente-juridico/src/pages/consulta-pdpj.tsx |
| `/consulta-processual` | artifacts/assistente-juridico/src/pages/consulta-processual.tsx |
| `/ementas` | artifacts/assistente-juridico/src/pages/ementas.tsx |
| `/escritorio` | artifacts/assistente-juridico/src/pages/escritorio.tsx |
| `/filtrador` | artifacts/assistente-juridico/src/pages/filtrador.tsx |
| `/historico` | artifacts/assistente-juridico/src/pages/historico.tsx |
| `/jurisprudencia` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| `/legal-assistant` | artifacts/assistente-juridico/src/pages/legal-assistant.tsx |
| `/login` | artifacts/assistente-juridico/src/pages/login.tsx |
| `/not-found` | artifacts/assistente-juridico/src/pages/not-found.tsx |
| `/painel-processos` | artifacts/assistente-juridico/src/pages/painel-processos.tsx |
| `/pje` | artifacts/assistente-juridico/src/pages/pje.tsx |
| `/playground` | artifacts/assistente-juridico/src/pages/playground.tsx |
| `/prazos` | artifacts/assistente-juridico/src/pages/prazos.tsx |
| `/previdenciario` | artifacts/assistente-juridico/src/pages/previdenciario.tsx |
| `/robo-djen` | artifacts/assistente-juridico/src/pages/robo-djen.tsx |
| `/status` | artifacts/assistente-juridico/src/pages/status.tsx |
| `/templates-juridicos` | artifacts/assistente-juridico/src/pages/templates-juridicos.tsx |
| `/token-generator` | artifacts/assistente-juridico/src/pages/token-generator.tsx |
| `/tramitacao` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| `auditoria.html` | auditoria.html |
| `comparador.html` | comparador.html |
| `hub.html` | hub.html |
| `index.html` | index.html |

## 🖥️ Rotas do backend
| Método | Rota | Arquivo |
|---|---|---|
| USE | `/api` | artifacts/api-server/src/app.ts |
| USE | `/api/ai` | artifacts/api-server/src/app.ts |
| POST | `/ai/process` | artifacts/api-server/src/routes/ai.ts |
| POST | `/ai/refine` | artifacts/api-server/src/routes/ai.ts |
| POST | `/code-assistant` | artifacts/api-server/src/routes/ai.ts |
| POST | `/voice-chat` | artifacts/api-server/src/routes/ai.ts |
| POST | `/demo-key-test` | artifacts/api-server/src/routes/ai.ts |
| POST | `/ai-usage-credit` | artifacts/api-server/src/routes/ai.ts |
| POST | `/assinatura/hash` | artifacts/api-server/src/routes/assinatura.ts |
| POST | `/assinatura/birdid/authorize` | artifacts/api-server/src/routes/assinatura.ts |
| POST | `/assinatura/birdid/token` | artifacts/api-server/src/routes/assinatura.ts |
| GET | `/assinatura/birdid/certificado` | artifacts/api-server/src/routes/assinatura.ts |
| POST | `/assinatura/birdid/assinar` | artifacts/api-server/src/routes/assinatura.ts |
| POST | `/assinatura/vidaas/authorize` | artifacts/api-server/src/routes/assinatura.ts |
| GET | `/assinatura/lista` | artifacts/api-server/src/routes/assinatura.ts |
| POST | `/assinatura/verificar` | artifacts/api-server/src/routes/assinatura.ts |
| GET | `/assinatura/config/status` | artifacts/api-server/src/routes/assinatura.ts |
| POST | `/auth/escritorio/registro` | artifacts/api-server/src/routes/auth-jwt.ts |
| POST | `/auth/escritorio/login` | artifacts/api-server/src/routes/auth-jwt.ts |
| POST | `/auth/escritorio/refresh` | artifacts/api-server/src/routes/auth-jwt.ts |
| POST | `/auth/escritorio/logout` | artifacts/api-server/src/routes/auth-jwt.ts |
| GET | `/auth/escritorio/perfil` | artifacts/api-server/src/routes/auth-jwt.ts |
| PUT | `/auth/escritorio/perfil` | artifacts/api-server/src/routes/auth-jwt.ts |
| GET | `/auth/escritorio/usuarios` | artifacts/api-server/src/routes/auth-jwt.ts |
| POST | `/auth/escritorio/usuario` | artifacts/api-server/src/routes/auth-jwt.ts |
| DELETE | `/auth/escritorio/usuario/:id` | artifacts/api-server/src/routes/auth-jwt.ts |
| GET | `/auth/escritorio/check` | artifacts/api-server/src/routes/auth-jwt.ts |
| GET | `/snippets` | artifacts/api-server/src/routes/crud.ts |
| GET | `/snippets/:id` | artifacts/api-server/src/routes/crud.ts |
| POST | `/snippets` | artifacts/api-server/src/routes/crud.ts |
| PATCH | `/snippets/:id` | artifacts/api-server/src/routes/crud.ts |
| DELETE | `/snippets/:id` | artifacts/api-server/src/routes/crud.ts |
| GET | `/custom-actions` | artifacts/api-server/src/routes/crud.ts |
| POST | `/custom-actions` | artifacts/api-server/src/routes/crud.ts |
| PATCH | `/custom-actions/:id` | artifacts/api-server/src/routes/crud.ts |
| DELETE | `/custom-actions/:id` | artifacts/api-server/src/routes/crud.ts |
| GET | `/ementas` | artifacts/api-server/src/routes/crud.ts |
| POST | `/ementas` | artifacts/api-server/src/routes/crud.ts |
| PATCH | `/ementas/:id` | artifacts/api-server/src/routes/crud.ts |
| DELETE | `/ementas/:id` | artifacts/api-server/src/routes/crud.ts |
| GET | `/ai-history` | artifacts/api-server/src/routes/crud.ts |
| POST | `/ai-history` | artifacts/api-server/src/routes/crud.ts |
| DELETE | `/ai-history/:id` | artifacts/api-server/src/routes/crud.ts |
| DELETE | `/ai-history` | artifacts/api-server/src/routes/crud.ts |
| GET | `/prompt-templates` | artifacts/api-server/src/routes/crud.ts |
| POST | `/prompt-templates` | artifacts/api-server/src/routes/crud.ts |
| PATCH | `/prompt-templates/:id` | artifacts/api-server/src/routes/crud.ts |
| DELETE | `/prompt-templates/:id` | artifacts/api-server/src/routes/crud.ts |
| GET | `/doc-templates` | artifacts/api-server/src/routes/crud.ts |
| POST | `/doc-templates` | artifacts/api-server/src/routes/crud.ts |
| PATCH | `/doc-templates/:id` | artifacts/api-server/src/routes/crud.ts |
| DELETE | `/doc-templates/:id` | artifacts/api-server/src/routes/crud.ts |
| GET | `/processos-monitorados` | artifacts/api-server/src/routes/crud.ts |
| POST | `/processos-monitorados` | artifacts/api-server/src/routes/crud.ts |
| PATCH | `/processos-monitorados/:id` | artifacts/api-server/src/routes/crud.ts |
| DELETE | `/processos-monitorados/:id` | artifacts/api-server/src/routes/crud.ts |
| POST | `/share/parecer` | artifacts/api-server/src/routes/crud.ts |
| GET | `/tramitacao/publicacoes` | artifacts/api-server/src/routes/crud.ts |
| PATCH | `/tramitacao/publicacoes/:id/lida` | artifacts/api-server/src/routes/crud.ts |
| POST | `/webhooks/tramitacao` | artifacts/api-server/src/routes/crud.ts |
| GET | `/ai-usage-summary` | artifacts/api-server/src/routes/crud.ts |
| POST | `/drive/upload` | artifacts/api-server/src/routes/drive-sync.ts |
| GET | `/drive/listar` | artifacts/api-server/src/routes/drive-sync.ts |
| GET | `/drive/download/:fileId` | artifacts/api-server/src/routes/drive-sync.ts |
| DELETE | `/drive/arquivo/:fileId` | artifacts/api-server/src/routes/drive-sync.ts |
| POST | `/drive/sync/push` | artifacts/api-server/src/routes/drive-sync.ts |
| POST | `/drive/oauth/refresh` | artifacts/api-server/src/routes/drive-sync.ts |
| GET | `/drive/sync/status` | artifacts/api-server/src/routes/drive-sync.ts |
| GET | `/drive/config/status` | artifacts/api-server/src/routes/drive-sync.ts |
| POST | `/jwt/generate` | artifacts/api-server/src/routes/extra.ts |
| GET | `/jwt/status` | artifacts/api-server/src/routes/extra.ts |
| GET | `/datajud/tribunais` | artifacts/api-server/src/routes/extra.ts |
| POST | `/datajud/consulta` | artifacts/api-server/src/routes/extra.ts |
| POST | `/datajud/consulta-oab` | artifacts/api-server/src/routes/extra.ts |
| GET | `/corporativo/advogado/cpf/:cpf` | artifacts/api-server/src/routes/extra.ts |
| GET | `/corporativo/advogado/oab/:uf/:inscricao` | artifacts/api-server/src/routes/extra.ts |
| GET | `/corporativo/magistrados/:tribunal` | artifacts/api-server/src/routes/extra.ts |
| GET | `/pdpj/status` | artifacts/api-server/src/routes/extra.ts |
| POST | `/pdpj/test-connection` | artifacts/api-server/src/routes/extra.ts |
| POST | `/pdpj/comunicacoes` | artifacts/api-server/src/routes/extra.ts |
| POST | `/pdpj/representados` | artifacts/api-server/src/routes/extra.ts |
| POST | `/pdpj/habilitacao` | artifacts/api-server/src/routes/extra.ts |
| POST | `/pdpj/pessoa` | artifacts/api-server/src/routes/extra.ts |
| POST | `/cnj/comunicacoes` | artifacts/api-server/src/routes/extra.ts |
| POST | `/code/run` | artifacts/api-server/src/routes/extra.ts |
| POST | `/previdenciario/extrair` | artifacts/api-server/src/routes/extra.ts |
| GET | `/pesquisa/oab` | artifacts/api-server/src/routes/extra.ts |
| GET | `/pesquisa/processo` | artifacts/api-server/src/routes/extra.ts |
| GET | `/djen/config` | artifacts/api-server/src/routes/extra.ts |
| POST | `/djen/gerar-token` | artifacts/api-server/src/routes/extra.ts |
| POST | `/export/word` | artifacts/api-server/src/routes/extra.ts |
| POST | `/template/vars/preview` | artifacts/api-server/src/routes/extra.ts |
| GET | `/template/vars/lista` | artifacts/api-server/src/routes/extra.ts |
| POST | `/export/word-with-template` | artifacts/api-server/src/routes/extra.ts |
| POST | `/doc-templates/upload-docx` | artifacts/api-server/src/routes/extra.ts |
| GET | `/tramitacao/test` | artifacts/api-server/src/routes/extra.ts |
| GET | `/tramitacao/clientes` | artifacts/api-server/src/routes/extra.ts |
| POST | `/tramitacao/clientes` | artifacts/api-server/src/routes/extra.ts |
| GET | `/tramitacao/clientes/:id` | artifacts/api-server/src/routes/extra.ts |
| PATCH | `/tramitacao/clientes/:id` | artifacts/api-server/src/routes/extra.ts |
| GET | `/tramitacao/usuarios` | artifacts/api-server/src/routes/extra.ts |
| GET | `/tramitacao/notas` | artifacts/api-server/src/routes/extra.ts |
| POST | `/tramitacao/notas` | artifacts/api-server/src/routes/extra.ts |
| DELETE | `/tramitacao/notas/:id` | artifacts/api-server/src/routes/extra.ts |
| GET | `/settings/:key` | artifacts/api-server/src/routes/extra.ts |
| PUT | `/settings/:key` | artifacts/api-server/src/routes/extra.ts |
| GET | `/healthz` | artifacts/api-server/src/routes/health.ts |
| GET | `/integracoes/status` | artifacts/api-server/src/routes/integracoes.ts |
| POST | `/integracoes/credenciais` | artifacts/api-server/src/routes/integracoes.ts |
| DELETE | `/integracoes/credenciais/:sistema` | artifacts/api-server/src/routes/integracoes.ts |
| POST | `/integracoes/esaj/consulta` | artifacts/api-server/src/routes/integracoes.ts |
| POST | `/integracoes/projudi/consulta` | artifacts/api-server/src/routes/integracoes.ts |
| POST | `/integracoes/eproc/consulta` | artifacts/api-server/src/routes/integracoes.ts |
| POST | `/integracoes/pjud/consulta` | artifacts/api-server/src/routes/integracoes.ts |
| POST | `/settings/key-detect` | artifacts/api-server/src/routes/integracoes.ts |
| GET | `/integracoes/sistemas` | artifacts/api-server/src/routes/integracoes.ts |
| POST | `/integracoes/stf/buscar` | artifacts/api-server/src/routes/integracoes.ts |
| POST | `/integracoes/stj/buscar` | artifacts/api-server/src/routes/integracoes.ts |
| POST | `/integracoes/tjsp/processo` | artifacts/api-server/src/routes/integracoes.ts |
| POST | `/integracoes/tst/buscar` | artifacts/api-server/src/routes/integracoes.ts |
| GET | `/jurisprudencia/tribunais` | artifacts/api-server/src/routes/jurisprudencia.ts |
| POST | `/jurisprudencia/buscar` | artifacts/api-server/src/routes/jurisprudencia.ts |
| POST | `/jurisprudencia/processo` | artifacts/api-server/src/routes/jurisprudencia.ts |
| POST | `/jurisprudencia/buscar-ia` | artifacts/api-server/src/routes/jurisprudencia.ts |
| GET | `/pje/consulta/:numero` | artifacts/api-server/src/routes/pje.ts |
| POST | `/pje/consulta` | artifacts/api-server/src/routes/pje.ts |
| GET | `/pje/movimentos/:numero` | artifacts/api-server/src/routes/pje.ts |
| GET | `/pje/tribunais` | artifacts/api-server/src/routes/pje.ts |
| GET | `/pje/config/status` | artifacts/api-server/src/routes/pje.ts |
| GET | `/prazos` | artifacts/api-server/src/routes/prazos.ts |
| GET | `/prazos/alertas` | artifacts/api-server/src/routes/prazos.ts |
| POST | `/prazos` | artifacts/api-server/src/routes/prazos.ts |
| PUT | `/prazos/:id` | artifacts/api-server/src/routes/prazos.ts |
| PUT | `/prazos/:id/status` | artifacts/api-server/src/routes/prazos.ts |
| DELETE | `/prazos/:id` | artifacts/api-server/src/routes/prazos.ts |
| POST | `/prazos/fcm/token` | artifacts/api-server/src/routes/prazos.ts |
| DELETE | `/prazos/fcm/token` | artifacts/api-server/src/routes/prazos.ts |
| POST | `/prazos/fcm/test` | artifacts/api-server/src/routes/prazos.ts |
| GET | `/auth/check` | artifacts/api-server/src/routes/settings.ts |
| POST | `/auth/login` | artifacts/api-server/src/routes/settings.ts |
| POST | `/auth/logout` | artifacts/api-server/src/routes/settings.ts |
| GET | `/settings/ai-config` | artifacts/api-server/src/routes/settings.ts |
| PUT | `/settings/ai-config` | artifacts/api-server/src/routes/settings.ts |
| GET | `/settings/system-status` | artifacts/api-server/src/routes/settings.ts |
| PUT | `/settings/app-password` | artifacts/api-server/src/routes/settings.ts |
| POST | `/settings/database-reconnect` | artifacts/api-server/src/routes/settings.ts |
| GET | `/demo-key-status` | artifacts/api-server/src/routes/settings.ts |
| GET | `/demo-key-config` | artifacts/api-server/src/routes/settings.ts |
| POST | `/demo-key-config` | artifacts/api-server/src/routes/settings.ts |
| GET | `/perplexity-key-status` | artifacts/api-server/src/routes/settings.ts |
| POST | `/tts` | artifacts/api-server/src/routes/settings.ts |
| POST | `/export/docx` | artifacts/api-server/src/routes/settings.ts |
| GET | `/ai-usage-summary` | artifacts/api-server/src/routes/settings.ts |
| POST | `/git-push` | artifacts/api-server/src/routes/settings.ts |
| GET | `/settings/db-status` | artifacts/api-server/src/routes/settings.ts |
| POST | `/settings/db-test` | artifacts/api-server/src/routes/settings.ts |
| POST | `/settings/db-init` | artifacts/api-server/src/routes/settings.ts |
| GET | `/settings/app-info` | artifacts/api-server/src/routes/settings.ts |
| GET | `/settings/env-list` | artifacts/api-server/src/routes/settings.ts |
| POST | `/settings/env-set` | artifacts/api-server/src/routes/settings.ts |
| POST | `/settings/db-query` | artifacts/api-server/src/routes/settings.ts |
| POST | `/settings/db-query-admin` | artifacts/api-server/src/routes/settings.ts |
| GET | `/settings/db-describe/:table` | artifacts/api-server/src/routes/settings.ts |
| POST | `/settings/drive-upload` | artifacts/api-server/src/routes/settings.ts |
| GET | `/health` | artifacts/api-server/src/routes/status.ts |
| GET | `/status` | artifacts/api-server/src/routes/status.ts |
| GET | `/status/ia` | artifacts/api-server/src/routes/status.ts |
| GET | `/status/banco` | artifacts/api-server/src/routes/status.ts |
| GET | `/status/integracoes` | artifacts/api-server/src/routes/status.ts |
| POST | `/upload/extract-text` | artifacts/api-server/src/routes/upload.ts |
| POST | `/extract-text` | artifacts/api-server/src/routes/upload.ts |
| POST | `/import/url` | artifacts/api-server/src/routes/upload.ts |
| POST | `/import-url` | artifacts/api-server/src/routes/upload.ts |
| POST | `/upload/transcribe` | artifacts/api-server/src/routes/upload.ts |
| POST | `/upload/ocr` | artifacts/api-server/src/routes/upload.ts |

## 📡 O que o app pede ao servidor
| Método | Endereço | Onde |
|---|---|---|
| POST | `/chat/completions` | artifacts/api-server/src/routes/ai.ts |
| POST | `/oauth/token` | artifacts/api-server/src/routes/assinatura.ts |
| GET | `/certificate` | artifacts/api-server/src/routes/assinatura.ts |
| POST | `/sign/hash` | artifacts/api-server/src/routes/assinatura.ts |
| GET | `/advogado/oab/${cpf}` | artifacts/api-server/src/routes/extra.ts |
| GET | `/advogado/oab/${uf.toUpperCase()}/${inscricao.replace(/\D/g, ` | artifacts/api-server/src/routes/extra.ts |
| GET | `/magistrado?siglaTribunal=${tribunal}` | artifacts/api-server/src/routes/extra.ts |
| GET | `/processos?numeroProcesso=${encodeURIComponent(numero)}` | artifacts/api-server/src/routes/pje.ts |
| GET | `/api/prazos/alertas` | artifacts/assistente-juridico/public/sw.js |
| GET | `/api/auth/check` | artifacts/assistente-juridico/src/App.tsx |
| GET | `/settings/app-info` | artifacts/assistente-juridico/src/pages/admin.tsx |
| GET | `/settings/db-status` | artifacts/assistente-juridico/src/pages/admin.tsx |
| GET | `/settings/env-list` | artifacts/assistente-juridico/src/pages/admin.tsx |
| POST | `/settings/env-set` | artifacts/assistente-juridico/src/pages/admin.tsx |
| POST | `/settings/db-query` | artifacts/assistente-juridico/src/pages/admin.tsx |
| GET | `/assinatura/config/status` | artifacts/assistente-juridico/src/pages/assinatura.tsx |
| POST | `/assinatura/hash` | artifacts/assistente-juridico/src/pages/assinatura.tsx |
| POST | `/assinatura/birdid/authorize` | artifacts/assistente-juridico/src/pages/assinatura.tsx |
| POST | `/assinatura/birdid/assinar` | artifacts/assistente-juridico/src/pages/assinatura.tsx |
| GET | `/assinatura/lista` | artifacts/assistente-juridico/src/pages/assinatura.tsx |
| POST | `/assinatura/verificar` | artifacts/assistente-juridico/src/pages/assinatura.tsx |
| POST | `/api/tts` | artifacts/assistente-juridico/src/pages/codigo.tsx |
| POST | `/api/code-assistant` | artifacts/assistente-juridico/src/pages/codigo.tsx |
| POST | `/api/cnj/comunicacoes` | artifacts/assistente-juridico/src/pages/comunicacoes-cnj.tsx |
| GET | `/settings/ai-config` | artifacts/assistente-juridico/src/pages/configuracoes.tsx |
| GET | `/settings/system-status` | artifacts/assistente-juridico/src/pages/configuracoes.tsx |
| GET | `/integracoes/status` | artifacts/assistente-juridico/src/pages/configuracoes.tsx |
| PUT | `/settings/ai-config` | artifacts/assistente-juridico/src/pages/configuracoes.tsx |
| POST | `/demo-key-test` | artifacts/assistente-juridico/src/pages/configuracoes.tsx |
| POST | `/settings/key-detect` | artifacts/assistente-juridico/src/pages/configuracoes.tsx |
| POST | `/settings/db-test` | artifacts/assistente-juridico/src/pages/configuracoes.tsx |
| POST | `/settings/db-init` | artifacts/assistente-juridico/src/pages/configuracoes.tsx |
| PUT | `/settings/app-password` | artifacts/assistente-juridico/src/pages/configuracoes.tsx |
| GET | `/api/settings/app-info` | artifacts/assistente-juridico/src/pages/configuracoes.tsx |
| POST | `/settings/db-query-admin` | artifacts/assistente-juridico/src/pages/configuracoes.tsx |
| GET | `/api/corporativo/advogado/cpf/${cpfClean}` | artifacts/assistente-juridico/src/pages/consulta-corporativo.tsx |
| GET | `/api/corporativo/advogado/oab/${oabUf}/${num}` | artifacts/assistente-juridico/src/pages/consulta-corporativo.tsx |
| GET | `/api/corporativo/magistrados/${magTribunal}` | artifacts/assistente-juridico/src/pages/consulta-corporativo.tsx |
| GET | `/api/pdpj/status` | artifacts/assistente-juridico/src/pages/consulta-pdpj.tsx |
| POST | `/api/pdpj/test-connection` | artifacts/assistente-juridico/src/pages/consulta-pdpj.tsx |
| POST | `/api/pdpj/comunicacoes` | artifacts/assistente-juridico/src/pages/consulta-pdpj.tsx |
| POST | `/api/pdpj/representados` | artifacts/assistente-juridico/src/pages/consulta-pdpj.tsx |
| POST | `/api/pdpj/habilitacao` | artifacts/assistente-juridico/src/pages/consulta-pdpj.tsx |
| POST | `/api/pdpj/pessoa` | artifacts/assistente-juridico/src/pages/consulta-pdpj.tsx |
| POST | `/api/datajud/consulta` | artifacts/assistente-juridico/src/pages/consulta-processual.tsx |
| POST | `/api/datajud/consulta-oab` | artifacts/assistente-juridico/src/pages/consulta-processual.tsx |
| GET | `/ementas` | artifacts/assistente-juridico/src/pages/ementas.tsx |
| POST | `/ementas` | artifacts/assistente-juridico/src/pages/ementas.tsx |
| PATCH | `/ementas/${id}` | artifacts/assistente-juridico/src/pages/ementas.tsx |
| DELETE | `/ementas/${id}` | artifacts/assistente-juridico/src/pages/ementas.tsx |
| GET | `/auth/escritorio/check` | artifacts/assistente-juridico/src/pages/escritorio.tsx |
| GET | `/auth/escritorio/perfil` | artifacts/assistente-juridico/src/pages/escritorio.tsx |
| GET | `/auth/escritorio/usuarios` | artifacts/assistente-juridico/src/pages/escritorio.tsx |
| POST | `/auth/escritorio/login` | artifacts/assistente-juridico/src/pages/escritorio.tsx |
| POST | `/auth/escritorio/registro` | artifacts/assistente-juridico/src/pages/escritorio.tsx |
| PUT | `/auth/escritorio/perfil` | artifacts/assistente-juridico/src/pages/escritorio.tsx |
| POST | `/auth/escritorio/usuario` | artifacts/assistente-juridico/src/pages/escritorio.tsx |
| DELETE | `/auth/escritorio/usuario/${id}` | artifacts/assistente-juridico/src/pages/escritorio.tsx |
| GET | `/ai-history` | artifacts/assistente-juridico/src/pages/historico.tsx |
| DELETE | `/ai-history/${id}` | artifacts/assistente-juridico/src/pages/historico.tsx |
| DELETE | `/ai-history` | artifacts/assistente-juridico/src/pages/historico.tsx |
| POST | `/api/doc-templates/upload-docx` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| POST | `/api/export/word-with-template` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| POST | `/api/jurisprudencia/buscar` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| POST | `/api/import/url` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| POST | `/api/upload/extract-text` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| POST | `/api/upload/transcribe` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| POST | `/api/ai/process` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| POST | `/api/ai/refine` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| POST | `/api/prompt-templates` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| PATCH | `/api/prompt-templates/${id}` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| DELETE | `/api/prompt-templates/${id}` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| POST | `/api/doc-templates` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| PATCH | `/api/doc-templates/${id}` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| DELETE | `/api/doc-templates/${id}` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| DELETE | `/api/ai-history/${id}` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| DELETE | `/api/ai-history` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| POST | `/api/custom-actions` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| PATCH | `/api/custom-actions/${id}` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| DELETE | `/api/custom-actions/${id}` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| POST | `/api/ementas` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| PATCH | `/api/ementas/${id}` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| DELETE | `/api/ementas/${id}` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| POST | `/api/ai-history` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| GET | `/api/custom-actions` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| GET | `/api/ementas` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| GET | `/api/ai-history` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| GET | `/api/prompt-templates` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| GET | `/api/doc-templates` | artifacts/assistente-juridico/src/pages/jurisprudencia.tsx |
| GET | `/api/demo-key-status` | artifacts/assistente-juridico/src/pages/legal-assistant.tsx |
| GET | `/api/demo-key-config` | artifacts/assistente-juridico/src/pages/legal-assistant.tsx |
| POST | `/api/voice-chat` | artifacts/assistente-juridico/src/pages/legal-assistant.tsx |
| POST | `/api/settings/drive-upload` | artifacts/assistente-juridico/src/pages/legal-assistant.tsx |
| POST | `/api/demo-key-config` | artifacts/assistente-juridico/src/pages/legal-assistant.tsx |
| GET | `/api/ai-usage-summary` | artifacts/assistente-juridico/src/pages/legal-assistant.tsx |
| POST | `/api/ai-usage-credit` | artifacts/assistente-juridico/src/pages/legal-assistant.tsx |
| POST | `/api/demo-key-test` | artifacts/assistente-juridico/src/pages/legal-assistant.tsx |
| POST | `/api/auth/login` | artifacts/assistente-juridico/src/pages/login.tsx |
| DELETE | `/api/processos/${id}` | artifacts/assistente-juridico/src/pages/painel-processos.tsx |
| PATCH | `/api/processos/${id}` | artifacts/assistente-juridico/src/pages/painel-processos.tsx |
| POST | `/api/processos` | artifacts/assistente-juridico/src/pages/painel-processos.tsx |
| GET | `/api/processos` | artifacts/assistente-juridico/src/pages/painel-processos.tsx |
| GET | `/pje/tribunais` | artifacts/assistente-juridico/src/pages/pje.tsx |
| GET | `/pje/config/status` | artifacts/assistente-juridico/src/pages/pje.tsx |
| POST | `/pje/consulta` | artifacts/assistente-juridico/src/pages/pje.tsx |
| GET | `/pje/movimentos/${encodeURIComponent(num)}` | artifacts/assistente-juridico/src/pages/pje.tsx |
| POST | `/api/code/run` | artifacts/assistente-juridico/src/pages/playground.tsx |
| POST | `/api/snippets` | artifacts/assistente-juridico/src/pages/playground.tsx |
| DELETE | `/api/snippets/${id}` | artifacts/assistente-juridico/src/pages/playground.tsx |
| PATCH | `/api/snippets/${id}` | artifacts/assistente-juridico/src/pages/playground.tsx |
| GET | `/api/snippets` | artifacts/assistente-juridico/src/pages/playground.tsx |
| GET | `/prazos` | artifacts/assistente-juridico/src/pages/prazos.tsx |
| POST | `/prazos/fcm/token` | artifacts/assistente-juridico/src/pages/prazos.tsx |
| POST | `/prazos/fcm/test` | artifacts/assistente-juridico/src/pages/prazos.tsx |
| DELETE | `/prazos/${id}` | artifacts/assistente-juridico/src/pages/prazos.tsx |
| PUT | `/prazos/${id}/status` | artifacts/assistente-juridico/src/pages/prazos.tsx |
| POST | `/api/previdenciario/extrair` | artifacts/assistente-juridico/src/pages/previdenciario.tsx |
| GET | `/api/djen/config` | artifacts/assistente-juridico/src/pages/robo-djen.tsx |
| POST | `/api/djen/gerar-token` | artifacts/assistente-juridico/src/pages/robo-djen.tsx |
| GET | `/api/pesquisa/oab?${params}` | artifacts/assistente-juridico/src/pages/robo-djen.tsx |
| GET | `/api/pesquisa/processo?${params}` | artifacts/assistente-juridico/src/pages/robo-djen.tsx |
| PUT | `/api/djen/config` | artifacts/assistente-juridico/src/pages/robo-djen.tsx |
| POST | `/api/djen/clientes` | artifacts/assistente-juridico/src/pages/robo-djen.tsx |
| DELETE | `/api/djen/clientes/${id}` | artifacts/assistente-juridico/src/pages/robo-djen.tsx |
| POST | `/api/djen/executar` | artifacts/assistente-juridico/src/pages/robo-djen.tsx |
| GET | `/api/djen/clientes` | artifacts/assistente-juridico/src/pages/robo-djen.tsx |
| GET | `/api/djen/publicacoes` | artifacts/assistente-juridico/src/pages/robo-djen.tsx |
| GET | `/status` | artifacts/assistente-juridico/src/pages/status.tsx |
| GET | `/status/integracoes` | artifacts/assistente-juridico/src/pages/status.tsx |
| GET | `/status/banco` | artifacts/assistente-juridico/src/pages/status.tsx |
| GET | `/api/jwt/status` | artifacts/assistente-juridico/src/pages/token-generator.tsx |
| POST | `/api/jwt/generate` | artifacts/assistente-juridico/src/pages/token-generator.tsx |
| GET | `/api/tramitacao/test` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| GET | `/api/tramitacao/clientes?page=${clientePage}&per_page=20` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| GET | `/api/tramitacao/clientes/${selectedCliente.id}` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| GET | `/api/tramitacao/usuarios` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| PUT | `/api/settings/tramitacao_token` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| POST | `/api/tramitacao/notas` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| DELETE | `/api/tramitacao/notas/${id}` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| POST | `/api/tramitacao/sync-publicacoes` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| PATCH | `/api/tramitacao/publicacoes/${id}/lida` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| GET | `/api/settings/tramitacao_token` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| GET | `/api/tramitacao/notas` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| GET | `/api/tramitacao/publicacoes` | artifacts/assistente-juridico/src/pages/tramitacao.tsx |
| POST | `/api/git-push` | assets/index-dpcc-epc.js |

## 🔌 O que falta no backend
✅ Tudo que o app chama tem rota no projeto (ou o app não usa servidor).

## 💤 Rotas que o app não usa
- POST `/assinatura/birdid/token` — artifacts/api-server/src/routes/assinatura.ts
- GET `/assinatura/birdid/certificado` — artifacts/api-server/src/routes/assinatura.ts
- POST `/assinatura/vidaas/authorize` — artifacts/api-server/src/routes/assinatura.ts
- POST `/auth/escritorio/refresh` — artifacts/api-server/src/routes/auth-jwt.ts
- POST `/auth/escritorio/logout` — artifacts/api-server/src/routes/auth-jwt.ts
- GET `/processos-monitorados` — artifacts/api-server/src/routes/crud.ts
- POST `/processos-monitorados` — artifacts/api-server/src/routes/crud.ts
- PATCH `/processos-monitorados/:id` — artifacts/api-server/src/routes/crud.ts
- DELETE `/processos-monitorados/:id` — artifacts/api-server/src/routes/crud.ts
- POST `/share/parecer` — artifacts/api-server/src/routes/crud.ts
- POST `/webhooks/tramitacao` — artifacts/api-server/src/routes/crud.ts
- POST `/drive/upload` — artifacts/api-server/src/routes/drive-sync.ts
- GET `/drive/listar` — artifacts/api-server/src/routes/drive-sync.ts
- GET `/drive/download/:fileId` — artifacts/api-server/src/routes/drive-sync.ts
- DELETE `/drive/arquivo/:fileId` — artifacts/api-server/src/routes/drive-sync.ts
- POST `/drive/sync/push` — artifacts/api-server/src/routes/drive-sync.ts
- POST `/drive/oauth/refresh` — artifacts/api-server/src/routes/drive-sync.ts
- GET `/drive/sync/status` — artifacts/api-server/src/routes/drive-sync.ts
- GET `/drive/config/status` — artifacts/api-server/src/routes/drive-sync.ts
- GET `/datajud/tribunais` — artifacts/api-server/src/routes/extra.ts
- POST `/export/word` — artifacts/api-server/src/routes/extra.ts
- POST `/template/vars/preview` — artifacts/api-server/src/routes/extra.ts
- GET `/template/vars/lista` — artifacts/api-server/src/routes/extra.ts
- GET `/settings/:key` — artifacts/api-server/src/routes/extra.ts
- PUT `/settings/:key` — artifacts/api-server/src/routes/extra.ts
- GET `/healthz` — artifacts/api-server/src/routes/health.ts
- POST `/integracoes/credenciais` — artifacts/api-server/src/routes/integracoes.ts
- DELETE `/integracoes/credenciais/:sistema` — artifacts/api-server/src/routes/integracoes.ts
- POST `/integracoes/esaj/consulta` — artifacts/api-server/src/routes/integracoes.ts
- POST `/integracoes/projudi/consulta` — artifacts/api-server/src/routes/integracoes.ts
- POST `/integracoes/eproc/consulta` — artifacts/api-server/src/routes/integracoes.ts
- POST `/integracoes/pjud/consulta` — artifacts/api-server/src/routes/integracoes.ts
- GET `/integracoes/sistemas` — artifacts/api-server/src/routes/integracoes.ts
- POST `/integracoes/stf/buscar` — artifacts/api-server/src/routes/integracoes.ts
- POST `/integracoes/stj/buscar` — artifacts/api-server/src/routes/integracoes.ts
- POST `/integracoes/tjsp/processo` — artifacts/api-server/src/routes/integracoes.ts
- POST `/integracoes/tst/buscar` — artifacts/api-server/src/routes/integracoes.ts
- GET `/jurisprudencia/tribunais` — artifacts/api-server/src/routes/jurisprudencia.ts
- POST `/jurisprudencia/processo` — artifacts/api-server/src/routes/jurisprudencia.ts
- POST `/jurisprudencia/buscar-ia` — artifacts/api-server/src/routes/jurisprudencia.ts
- GET `/pje/consulta/:numero` — artifacts/api-server/src/routes/pje.ts
- POST `/auth/logout` — artifacts/api-server/src/routes/settings.ts
- POST `/settings/database-reconnect` — artifacts/api-server/src/routes/settings.ts
- GET `/perplexity-key-status` — artifacts/api-server/src/routes/settings.ts
- POST `/export/docx` — artifacts/api-server/src/routes/settings.ts
- GET `/settings/db-describe/:table` — artifacts/api-server/src/routes/settings.ts
- GET `/health` — artifacts/api-server/src/routes/status.ts
- GET `/status/ia` — artifacts/api-server/src/routes/status.ts
- POST `/import-url` — artifacts/api-server/src/routes/upload.ts
- POST `/upload/ocr` — artifacts/api-server/src/routes/upload.ts

## 🗄️ Banco de dados
- **users** — lib/db/src/schema/index.ts
- **snippets** — lib/db/src/schema/index.ts
- **custom_actions** — lib/db/src/schema/index.ts
- **ementas** — lib/db/src/schema/index.ts
- **ai_history** — lib/db/src/schema/index.ts
- **prompt_templates** — lib/db/src/schema/index.ts
- **doc_templates** — lib/db/src/schema/index.ts
- **shared_pareceres** — lib/db/src/schema/index.ts
- **processos_monitorados** — lib/db/src/schema/index.ts
- **app_settings** — lib/db/src/schema/index.ts
- **tramitacao_publicacoes** — lib/db/src/schema/index.ts
- **escritorios** — lib/db/src/schema/index.ts
- **escritorio_users** — lib/db/src/schema/index.ts
- **prazos** — lib/db/src/schema/index.ts
- **fcm_tokens** — lib/db/src/schema/index.ts
- **docs_sincronizados** — lib/db/src/schema/index.ts
- **assinaturas_digitais** — lib/db/src/schema/index.ts
- **template_var_defs** — lib/db/src/schema/index.ts
- **conversations** — lib/db/src/schema/index.ts
- **messages** — lib/db/src/schema/index.ts

## 🔐 Variáveis de ambiente (configurar no servidor)
- `APP_PASSWORD`
- `BASE_PATH`
- `BIRDID_CLIENT_ID`
- `BIRDID_CLIENT_SECRET`
- `CAPACITOR_SERVER_URL`
- `DATABASE_URL`
- `DATAJUD_API_KEY`
- `ELECTRON_DATA_PATH`
- `ELECTRON_MODE`
- `FCM_PROJECT_ID`
- `FCM_SERVER_KEY`
- `GOOGLE_DRIVE_ACCESS_TOKEN`
- `GOOGLE_DRIVE_FOLDER_ID`
- `GOOGLE_DRIVE_REFRESH_TOKEN`
- `GOOGLE_DRIVE_TOKEN`
- `GOOGLE_OAUTH_CLIENT_ID`
- `GOOGLE_OAUTH_CLIENT_SECRET`
- `JWT_SECRET`
- `LOCAL_DATA_FILE`
- `LOCAL_MODE`
- `LOG_LEVEL`
- `NODE_ENV`
- `PDPJ_PEM_PRIVATE_KEY`
- `PORT`
- `REPL_ID`
- `SESSION_SECRET`
- `VIDAAS_CLIENT_ID`
- `VIDAAS_CLIENT_SECRET`

_Só os nomes. Os valores (chaves, senhas) nunca vão no código nem no GitHub._

## 🤖 IA usada
- Google Gemini
- OpenAI (ChatGPT)
- api.anthropic.com
- openrouter.ai
- api.openai.com
- api.groq.com
- generativelanguage.googleapis.com
- platform.openai.com
- console.anthropic.com
- console.groq.com

## 🌐 Serviços de fora que ele acessa
- aistudio.google.com
- api-publica.datajud.cnj.jus.br
- api.anthropic.com
- api.cohere.ai
- api.dje.tjmg.jus.br
- api.groq.com
- api.mistral.ai
- api.openai.com
- api.perplexity.ai
- api.together.xyz
- api.x.ai
- apiv2.birdid.com.br
- birdid.com.br
- cdnjs.cloudflare.com
- certificado.vidaas.com.br
- cna.oab.org.br
- comunicaapi.pje.jus.br
- console.anthropic.com
- console.cloud.google.com
- console.firebase.google.com
- console.groq.com
- console.mistral.ai
- console.x.ai
- datajud-wiki.cnj.jus.br
- datajud.cnj.jus.br
- developer.android.com
- developers.google.com
- domicilio-eletronico.pdpj.jus.br
- elevenlabs.io
- eproc.trf1.jus.br
- eproc.trf4.jus.br
- eproc.trf5.jus.br
- esaj.tjba.jus.br
- esaj.tjce.jus.br
- esaj.tjsc.jus.br
- esaj.tjsp.jus.br
- fcm.googleapis.com
- foo.bar
- gateway.cloud.pje.jus.br
- gateway.stg.cloud.pje.jus.br
- generativelanguage.googleapis.com
- github.com
- hcomunicaapi.cnj.jus.br
- huggingface.co
- jurisprudencia.cnj.jus.br
- jurisprudencia.stf.jus.br
- jurisprudencia.tst.jus.br
- meuservidor.com
- neon.tech
- oauth2.googleapis.com
- openrouter.ai
- perplexity.ai
- pje.tjac.jus.br
- pje.tjal.jus.br
- pje.tjam.jus.br
- pje.tjap.jus.br
- pje.tjba.jus.br
- pje.tjce.jus.br
- pje.tjma.jus.br
- pje.tjpa.jus.br
- pje.tjpb.jus.br
- pje.tjpe.jus.br
- pje.tjpi.jus.br
- pje.tjrn.jus.br
- pje.tjro.jus.br
- pje.tjrr.jus.br
- pje.tjse.jus.br
- pje.tjto.jus.br
- pje.trf3.jus.br
- pje.trf5.jus.br
- planilha.tramitacaointeligente.com.br
- platform.openai.com
- processo.stj.jus.br
- projudi.tjam.jus.br
- projudi.tjgo.jus.br
- projudi.tjpr.jus.br
- prosemirror.net
- purl.oclc.org
- scon.stj.jus.br
- seeu.mj.gov.br

## 📦 Peças principais (dependências)
`@capacitor/android` · `@capacitor/core` · `@google/genai` · `@tiptap/extension-color` · `@tiptap/extension-font-family` · `@tiptap/extension-heading` · `@tiptap/extension-highlight` · `@tiptap/extension-link` · `@tiptap/extension-paragraph` · `@tiptap/extension-table` · `@tiptap/extension-table-cell` · `@tiptap/extension-table-header` · `@tiptap/extension-table-row` · `@tiptap/extension-text-align` · `@tiptap/extension-text-style` · `@tiptap/extension-underline` · `@tiptap/pm` · `@tiptap/react` · `@tiptap/starter-kit` · `@types/connect-pg-simple` · `@types/express-session` · `@types/jsonwebtoken` · `@types/multer` · `@workspace/api-zod` · `@workspace/db` · `adm-zip` · `connect-pg-simple` · `cookie-parser` · `cors` · `docx` · `drizzle-orm` · `drizzle-zod` · `electron-updater` · `express` · `express-rate-limit` · `express-session` · `html-entities` · `jsonwebtoken` · `mammoth` · `memorystore` · `multer` · `openai` · `p-limit` · `p-retry` · `pdfjs-dist` · `pg` · `pino` · `pino-http` · `zod`

## 🧹 Arquivos com coisa da Replit
- artifacts/assistente-juridico/src/pages/codigo.tsx
- artifacts/assistente-juridico/src/pages/legal-assistant.tsx
- artifacts/assistente-juridico/vite.config.ts
- artifacts/desktop/main.js
- assets/index-dpcc-epc.js
- capacitor.config.ts
- service-worker.js

## 🔁 Roteiro para recriar fora da Replit
1. Importar o projeto no Mini SK e tocar em 🏗️ Preparar → ✅ Fazer tudo (tira a Replit, cria os arquivos que faltam).
2. Backend: escolher onde ele vai ficar ligado (Render/Railway grátis) — ou pedir à IA para transformar as rotas em funções do Netlify/Vercel, usando a tabela "O que falta no backend".
3. Banco: criar no Neon ou Supabase e colocar o endereço na variável de ambiente do servidor.
4. Variáveis: cadastrar 28 variável(is) no servidor (lista acima).
5. Testar a prévia; se der erro, 🤖 Mandar os erros para a IA.
6. App: 📲 Instalável (PWA), 📦 APK ou 🖥️ Desktop (.exe) pelo 🏗️ Preparar.

## 🌳 Árvore de arquivos
```
├─ 📁 .github/
│  └─ 📁 workflows/
│     ├─ apk-capacitor.yml
│     ├─ apk.yml
│     ├─ build-android.yml
│     ├─ build-desktop.yml
│     └─ desktop-exe.yml
├─ 📁 2/
│  └─ _redirects
├─ 📁 artifacts/
│  ├─ 📁 api-server/
│  │  ├─ 📁 src/
│  │  │  ├─ 📁 lib/
│  │  │  │  ├─ .gitkeep
│  │  │  │  └─ logger.ts
│  │  │  ├─ 📁 middleware/
│  │  │  │  └─ jwt-auth.ts
│  │  │  ├─ 📁 middlewares/
│  │  │  │  └─ .gitkeep
│  │  │  ├─ 📁 routes/
│  │  │  │  ├─ ai.ts
│  │  │  │  ├─ assinatura.ts
│  │  │  │  ├─ auth-jwt.ts
│  │  │  │  ├─ crud.ts
│  │  │  │  ├─ drive-sync.ts
│  │  │  │  ├─ extra.ts
│  │  │  │  ├─ health.ts
│  │  │  │  ├─ index.ts
│  │  │  │  ├─ integracoes.ts
│  │  │  │  ├─ jurisprudencia.ts
│  │  │  │  ├─ pje.ts
│  │  │  │  ├─ prazos.ts
│  │  │  │  ├─ settings.ts
│  │  │  │  ├─ status.ts
│  │  │  │  └─ upload.ts
│  │  │  ├─ app.ts
│  │  │  ├─ file-storage.ts
│  │  │  ├─ index.ts
│  │  │  ├─ local-config.ts
│  │  │  └─ storage.ts
│  │  ├─ build.mjs
│  │  ├─ package.json
│  │  └─ tsconfig.json
│  ├─ 📁 assistente-juridico/
│  │  ├─ 📁 public/
│  │  │  ├─ favicon.svg
│  │  │  ├─ icon-192.png
│  │  │  ├─ icon-512.png
│  │  │  ├─ manifest.json
│  │  │  ├─ opengraph.jpg
│  │  │  ├─ robots.txt
│  │  │  └─ sw.js
│  │  ├─ 📁 src/
│  │  │  ├─ 📁 components/
│  │  │  │  ├─ 📁 ui/
│  │  │  │  │  ├─ accordion.tsx
│  │  │  │  │  ├─ alert-dialog.tsx
│  │  │  │  │  ├─ alert.tsx
│  │  │  │  │  ├─ aspect-ratio.tsx
│  │  │  │  │  ├─ avatar.tsx
│  │  │  │  │  ├─ badge.tsx
│  │  │  │  │  ├─ breadcrumb.tsx
│  │  │  │  │  ├─ button-group.tsx
│  │  │  │  │  ├─ button.tsx
│  │  │  │  │  ├─ calendar.tsx
│  │  │  │  │  ├─ card.tsx
│  │  │  │  │  ├─ carousel.tsx
│  │  │  │  │  ├─ chart.tsx
│  │  │  │  │  ├─ checkbox.tsx
│  │  │  │  │  ├─ collapsible.tsx
│  │  │  │  │  ├─ command.tsx
│  │  │  │  │  ├─ context-menu.tsx
│  │  │  │  │  ├─ dialog.tsx
│  │  │  │  │  ├─ drawer.tsx
│  │  │  │  │  ├─ dropdown-menu.tsx
│  │  │  │  │  ├─ empty.tsx
│  │  │  │  │  ├─ field.tsx
│  │  │  │  │  ├─ form.tsx
│  │  │  │  │  ├─ hover-card.tsx
│  │  │  │  │  ├─ input-group.tsx
│  │  │  │  │  ├─ input-otp.tsx
│  │  │  │  │  ├─ input.tsx
│  │  │  │  │  ├─ item.tsx
│  │  │  │  │  ├─ kbd.tsx
│  │  │  │  │  ├─ label.tsx
│  │  │  │  │  ├─ menubar.tsx
│  │  │  │  │  ├─ navigation-menu.tsx
│  │  │  │  │  ├─ pagination.tsx
│  │  │  │  │  ├─ popover.tsx
│  │  │  │  │  ├─ progress.tsx
│  │  │  │  │  ├─ radio-group.tsx
│  │  │  │  │  ├─ resizable.tsx
│  │  │  │  │  ├─ scroll-area.tsx
│  │  │  │  │  ├─ select.tsx
│  │  │  │  │  ├─ separator.tsx
│  │  │  │  │  ├─ sheet.tsx
│  │  │  │  │  ├─ sidebar.tsx
│  │  │  │  │  ├─ skeleton.tsx
│  │  │  │  │  ├─ slider.tsx
│  │  │  │  │  ├─ sonner.tsx
│  │  │  │  │  ├─ spinner.tsx
│  │  │  │  │  ├─ switch.tsx
│  │  │  │  │  ├─ table.tsx
│  │  │  │  │  ├─ tabs.tsx
│  │  │  │  │  ├─ textarea.tsx
│  │  │  │  │  ├─ toast.tsx
│  │  │  │  │  ├─ toaster.tsx
│  │  │  │  │  ├─ toggle-group.tsx
│  │  │  │  │  ├─ toggle.tsx
│  │  │  │  │  └─ tooltip.tsx
│  │  │  │  ├─ pwa-install.tsx
│  │  │  │  ├─ theme-provider.tsx
│  │  │  │  ├─ theme-toggle.tsx
│  │  │  │  └─ tiptap-editor.tsx
│  │  │  ├─ 📁 hooks/
│  │  │  │  ├─ use-mobile.tsx
│  │  │  │  └─ use-toast.ts
│  │  │  ├─ 📁 lib/
│  │  │  │  ├─ legal-formatter.ts
│  │  │  │  ├─ queryClient.ts
│  │  │  │  ├─ sync-storage.ts
│  │  │  │  └─ utils.ts
│  │  │  ├─ 📁 pages/
│  │  │  │  ├─ admin.tsx
│  │  │  │  ├─ assinatura.tsx
│  │  │  │  ├─ auditoria-financeira.tsx
│  │  │  │  ├─ codigo.tsx
│  │  │  │  ├─ comparador-juridico.tsx
│  │  │  │  ├─ comunicacoes-cnj.tsx
│  │  │  │  ├─ configuracoes.tsx
│  │  │  │  ├─ consulta-corporativo.tsx
│  │  │  │  ├─ consulta-pdpj.tsx
│  │  │  │  ├─ consulta-processual.tsx
│  │  │  │  ├─ ementas.tsx
│  │  │  │  ├─ escritorio.tsx
│  │  │  │  ├─ filtrador.tsx
│  │  │  │  ├─ historico.tsx
│  │  │  │  ├─ jurisprudencia.tsx
│  │  │  │  ├─ legal-assistant.tsx
│  │  │  │  ├─ login.tsx
│  │  │  │  ├─ not-found.tsx
│  │  │  │  ├─ painel-processos.tsx
│  │  │  │  ├─ pje.tsx
│  │  │  │  ├─ playground.tsx
│  │  │  │  ├─ prazos.tsx
│  │  │  │  ├─ previdenciario.tsx
│  │  │  │  ├─ robo-djen.tsx
│  │  │  │  ├─ status.tsx
│  │  │  │  ├─ templates-juridicos.tsx
│  │  │  │  ├─ token-generator.tsx
│  │  │  │  └─ tramitacao.tsx
│  │  │  ├─ App.tsx
│  │  │  ├─ index.css
│  │  │  └─ main.tsx
│  │  ├─ index.html
│  │  ├─ package.json
│  │  ├─ tsconfig.json
│  │  └─ vite.config.ts
│  └─ 📁 desktop/
│     ├─ main.js
│     ├─ package.json
│     └─ preload.js
├─ 📁 assets/
│  ├─ apple-touch-icon-0bjmg_7d.png
│  ├─ favicon-cmw39ln7.ico
│  ├─ icon-ds_dca0k.svg
│  ├─ index-c8wiwhew.js
│  ├─ index-dpcc-epc.js
│  ├─ index-duhakd9o.css
│  ├─ manifest-sazxpdoz.json
│  └─ pdf-b75moh95.js
├─ 📁 electron/
│  ├─ main.cjs
│  └─ preload.cjs
├─ 📁 icons/
│  ├─ apple-touch-icon.png
│  ├─ icon-128.png
│  ├─ icon-144.png
│  ├─ icon-152.png
│  ├─ icon-16.png
│  ├─ icon-180.png
│  ├─ icon-192.png
│  ├─ icon-32.png
│  ├─ icon-384.png
│  ├─ icon-48.png
│  ├─ icon-512.png
│  ├─ icon-72.png
│  ├─ icon-96.png
│  ├─ icon.svg
│  ├─ maskable-192.png
│  ├─ maskable-512.png
│  └─ maskable.svg
├─ 📁 lib/
│  ├─ 📁 db/
│  │  ├─ 📁 src/
│  │  │  ├─ 📁 schema/
│  │  │  │  └─ index.ts
│  │  │  └─ index.ts
│  │  ├─ drizzle.config.ts
│  │  ├─ package.json
│  │  └─ tsconfig.json
│  └─ 📁 sync-storage/
│     ├─ 📁 src/
│     │  └─ index.ts
│     ├─ package.json
│     └─ tsconfig.json
├─ 📁 scripts/
│  ├─ build-apk.sh
│  ├─ build-desktop.sh
│  ├─ build-eas.sh
│  ├─ export-zip.sh
│  └─ start-servidor.sh
├─ .env
├─ .env.example
├─ .gitignore
├─ 404.html
├─ apk.config.json
├─ app.json
├─ Atualização pelo Mini SK · maikonadvogadomg-alt_assistente-juridico-local-09-10-b6@fad7885 · GitHub
├─ auditoria.html
├─ capacitor.config.ts
├─ codigo-formatacao.txt
├─ comparador.html
├─ docker-compose.yml
├─ Dockerfile.api
├─ eas.json
├─ favicon.ico
├─ favicon.png
├─ hub.html
├─ hub.webmanifest
├─ icon-192.png
├─ icon-512.png
├─ index.html
├─ manifest.json
├─ manifest.webmanifest
├─ MANUAL.md
├─ nginx.conf
├─ package.json
├─ PLANO.md
├─ pnpm-workspace.yaml
├─ README.md
├─ replit.md
├─ service-worker.js
├─ tsconfig.base.json
└─ tsconfig.json
```
