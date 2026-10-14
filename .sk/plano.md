# Plano do projeto: sk-juridico-v1.5.0

_Gerado pelo Mini SK em 14/10/2026, 02:53:58_

## Resumo

- Arquivos: **226** (8.2 MB)
- Tipo: **monorepo** (vários projetos dentro de um) — 6 package.json
- Arquivos por tipo: TSX 90, TypeScript 33, PNG 22, JSON 18, JavaScript 11, YAML 7, HTML 6, Markdown 5, Shell 5, Texto 4, SVG 4, GRADLE 3, .env 2, XML 2, GITKEEP 2, CSS 2, ICO 2, Manifest 2, Git 1, Java 1, PROPERTIES 1, JPG 1, API 1, CONF 1
- Dependências diferentes: **123** (49 obrigatórias, 74 só para montar)
- Restos da Replit: **7 arquivo(s)**

## 📦 workspace — `package.json`

- Arquivo principal: `electron/main.cjs`

**Comandos (scripts):**

| Comando | O que faz | Executa |
|---|---|---|
| `desktop` | — | `electron .` |
| `exe` | — | `electron-builder --win portable --publish never` |
| `preinstall` | — | `sh -c 'rm -f package-lock.json yarn.lock; case "$npm_config_user_agent" in pnpm/*) ;; *) echo "Use pnpm instead" >&2; exit 1 ;; esac'` |
| `build` | Gera a versão final (pasta dist) | `pnpm run typecheck && pnpm -r --if-present run build` |
| `typecheck:libs` | Confere os tipos do TypeScript (não muda nada) | `tsc --build` |
| `typecheck` | Confere os tipos do TypeScript (não muda nada) | `pnpm run typecheck:libs && pnpm -r --filter "./artifacts/**" --filter "./scripts" --if-present run typecheck` |

**Dependências (o app precisa) — 2:**

| Pacote | Versão | Pra que serve | Tipo |
|---|---|---|---|
| `@capacitor/core` | ^7.0.0 | Transforma o app em APK (Android) | 📱 APK |
| `@capacitor/android` | ^7.0.0 | Projeto Android do Capacitor | 📱 APK |

**Dependências de montagem (dev) — 7:**

| Pacote | Versão | Pra que serve | Tipo |
|---|---|---|---|
| `@capacitor/android` | ^8.3.4 | Projeto Android do Capacitor | 📱 APK |
| `@capacitor/cli` | ^8.3.4 | Comandos do Capacitor (só para montar) | 📱 APK |
| `@capacitor/core` | ^8.3.4 | Transforma o app em APK (Android) | 📱 APK |
| `prettier` | ^3.8.1 | Arruma a formatação do código | 🧪 Teste |
| `typescript` | ~5.9.2 | JavaScript com tipos — só para montar, não vai pro app final | 🔧 Montagem |
| `electron` | ^33.2.0 | Executável de computador (janela própria) | 💻 EXE |
| `electron-builder` | ^25.1.8 | Gera o .exe do Electron | 💻 EXE |

## 📦 @workspace/api-server — `artifacts/api-server/package.json`


**Comandos (scripts):**

| Comando | O que faz | Executa |
|---|---|---|
| `dev` | Liga o app em modo de teste (atualiza sozinho) | `export NODE_ENV=development && pnpm run build && pnpm run start` |
| `build` | Gera a versão final (pasta dist) | `node ./build.mjs` |
| `start` | Liga a versão final | `node --enable-source-maps ./dist/index.mjs` |
| `typecheck` | Confere os tipos do TypeScript (não muda nada) | `tsc -p tsconfig.json --noEmit` |

**Dependências (o app precisa) — 28:**

| Pacote | Versão | Pra que serve | Tipo |
|---|---|---|---|
| `@google/genai` | ^1.52.0 | IA Gemini | 🤖 IA |
| `@types/connect-pg-simple` | ^7.0.3 | Tipos para o TypeScript — só para montar, pode ignorar | 📐 Tipos |
| `@types/express-session` | ^1.19.0 | Tipos para o TypeScript — só para montar, pode ignorar | 📐 Tipos |
| `@types/jsonwebtoken` | ^9.0.10 | Tipos para o TypeScript — só para montar, pode ignorar | 📐 Tipos |
| `@types/multer` | ^2.1.0 | Tipos para o TypeScript — só para montar, pode ignorar | 📐 Tipos |
| `@workspace/api-zod` | workspace:* | Pacote INTERNO deste projeto (outra pasta do monorepo) | 🔗 Interno |
| `@workspace/db` | workspace:* | Pacote INTERNO deste projeto (outra pasta do monorepo) | 🔗 Interno |
| `adm-zip` | ^0.5.17 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `connect-pg-simple` | ^10.0.0 | Guarda as sessões de login no Postgres | 🗄 Servidor |
| `cookie-parser` | ^1.4.7 | Lê cookies (login) | 🗄 Servidor |
| `cors` | ^2 | Deixa a tela falar com o servidor de outro endereço | 🗄 Servidor |
| `docx` | ^9.6.1 | Cria arquivos Word (.docx) | 🧰 Utilidade |
| `drizzle-orm` | ^0.45.2 | Conversa com o banco de dados (Postgres) | 🛢 Banco |
| `express` | ^5 | Servidor (recebe os pedidos das telas: salvar, IA, banco) | 🗄 Servidor |
| `express-rate-limit` | ^8.5.1 | Limita pedidos (proteção) | 🗄 Servidor |
| `express-session` | ^1.19.0 | Sessão de login | 🗄 Servidor |
| `html-entities` | ^2.6.0 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `jsonwebtoken` | ^9.0.3 | Token de login (JWT) | 🗄 Servidor |
| `mammoth` | ^1.12.0 | Lê arquivos Word (.docx) | 🧰 Utilidade |
| `memorystore` | ^1.6.8 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `multer` | ^2.1.1 | Recebe arquivos enviados (upload) | 🗄 Servidor |
| `openai` | ^6.36.0 | IA da OpenAI (ChatGPT) — também serve p/ Groq, OpenRouter | 🤖 IA |
| `p-limit` | ^7.3.0 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `p-retry` | ^8.0.0 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `pdfjs-dist` | ^5.7.284 | Lê PDFs | 🧰 Utilidade |
| `pg` | ^8.20.0 | Conexão com Postgres | 🛢 Banco |
| `pino` | ^9 | Escreve o log do servidor | 🗄 Servidor |
| `pino-http` | ^10 | Log de cada pedido ao servidor | 🗄 Servidor |

**Dependências de montagem (dev) — 8:**

| Pacote | Versão | Pra que serve | Tipo |
|---|---|---|---|
| `@types/cookie-parser` | ^1.4.10 | Tipos para o TypeScript — só para montar, pode ignorar | 📐 Tipos |
| `@types/cors` | ^2.8.19 | Tipos para o TypeScript — só para montar, pode ignorar | 📐 Tipos |
| `@types/express` | ^5.0.6 | Tipos do Express (só para montar) | 📐 Tipos |
| `@types/node` | ^25.3.3 | Tipos para o TypeScript — só para montar, pode ignorar | 📐 Tipos |
| `esbuild` | ^0.27.3 | Empacotador rápido: junta o servidor num arquivo só | 🔧 Montagem |
| `esbuild-plugin-pino` | ^2.3.3 | Faz o esbuild funcionar com o Pino (log) | 🔧 Montagem |
| `pino-pretty` | ^13 | Deixa o log legível | 🗄 Servidor |
| `thread-stream` | 3.1.0 | (sem descrição — toque no nome para ver no npm) | ❔ |

## 📦 @workspace/assistente-juridico — `artifacts/assistente-juridico/package.json`


**Comandos (scripts):**

| Comando | O que faz | Executa |
|---|---|---|
| `dev` | Liga o app em modo de teste (atualiza sozinho) | `vite --config vite.config.ts --host 0.0.0.0` |
| `build` | Gera a versão final (pasta dist) | `vite build --config vite.config.ts` |
| `serve` | Liga um servidor simples | `vite preview --config vite.config.ts --host 0.0.0.0` |
| `typecheck` | Confere os tipos do TypeScript (não muda nada) | `tsc -p tsconfig.json --noEmit` |

**Dependências (o app precisa) — 20:**

| Pacote | Versão | Pra que serve | Tipo |
|---|---|---|---|
| `@tiptap/extension-color` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/extension-font-family` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/extension-heading` | ^3.23.1 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/extension-highlight` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/extension-link` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/extension-paragraph` | ^3.23.1 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/extension-table` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/extension-table-cell` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/extension-table-header` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/extension-table-row` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/extension-text-align` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/extension-text-style` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/extension-underline` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/pm` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/react` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `@tiptap/starter-kit` | ^3.22.5 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `docx` | ^9.6.1 | Cria arquivos Word (.docx) | 🧰 Utilidade |
| `html-entities` | ^2.6.0 | (sem descrição — toque no nome para ver no npm) | ❔ |
| `mammoth` | ^1.12.0 | Lê arquivos Word (.docx) | 🧰 Utilidade |
| `pdfjs-dist` | ^5.7.284 | Lê PDFs | 🧰 Utilidade |

**Dependências de montagem (dev) — 60:**

| Pacote | Versão | Pra que serve | Tipo |
|---|---|---|---|
| `@hookform/resolvers` | ^3.10.0 | Liga o formulário às regras do Zod | 🖥 Tela |
| `@radix-ui/react-accordion` | ^1.2.4 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-alert-dialog` | ^1.1.7 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-aspect-ratio` | ^1.1.3 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-avatar` | ^1.1.4 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-checkbox` | ^1.1.5 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-collapsible` | ^1.1.4 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-context-menu` | ^2.2.7 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-dialog` | ^1.1.7 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-dropdown-menu` | ^2.1.7 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-hover-card` | ^1.1.7 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-label` | ^2.1.3 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-menubar` | ^1.1.7 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-navigation-menu` | ^1.2.6 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-popover` | ^1.1.7 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-progress` | ^1.1.3 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-radio-group` | ^1.2.4 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-scroll-area` | ^1.2.4 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-select` | ^2.1.7 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-separator` | ^1.1.3 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-slider` | ^1.2.4 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-slot` | ^1.2.0 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-switch` | ^1.1.4 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-tabs` | ^1.1.4 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-toast` | ^1.2.7 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-toggle` | ^1.1.3 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-toggle-group` | ^1.1.3 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@radix-ui/react-tooltip` | ^1.2.0 | Peça de interface pronta (botão, menu, janela) usada pelo shadcn/ui | 🖥 Tela |
| `@tailwindcss/typography` | ^0.5.15 | Estilo bonito para textos longos | 🎨 Estilo |
| `@tailwindcss/vite` | ^4.1.14 | Liga o Tailwind no Vite | 🎨 Estilo |
| `@tanstack/react-query` | ^5.90.21 | Busca e guarda dados do servidor nas telas | 🖥 Tela |
| `@types/node` | ^25.3.3 | Tipos para o TypeScript — só para montar, pode ignorar | 📐 Tipos |
| `@types/react` | ^19.2.0 | Tipos para o TypeScript — só para montar, pode ignorar | 📐 Tipos |
| `@types/react-dom` | ^19.2.0 | Tipos para o TypeScript — só para montar, pode ignorar | 📐 Tipos |
| `@vitejs/plugin-react` | ^5.0.4 | Faz o Vite entender React | 🔧 Montagem |
| `@workspace/api-client-react` | workspace:* | Pacote INTERNO deste projeto (outra pasta do monorepo) | 🔗 Interno |
| `class-variance-authority` | ^0.7.1 | Variações de botões/estilos (shadcn/ui) | 🎨 Estilo |
| `clsx` | ^2.1.1 | Monta listas de classes CSS | 🎨 Estilo |
| `cmdk` | ^1.1.1 | Caixa de comandos/busca rápida | 🖥 Tela |
| `date-fns` | ^3.6.0 | Datas (formatar, somar dias, prazos) | 🧰 Utilidade |
| `embla-carousel-react` | ^8.6.0 | Carrossel de imagens/cartões | 🖥 Tela |
| `framer-motion` | ^12.23.24 | Animações nas telas | 🖥 Tela |
| `input-otp` | ^1.4.2 | Campo de código (tipo SMS) | 🖥 Tela |
| `lucide-react` | ^0.545.0 | Ícones (desenhos dos botões) | 🖥 Tela |
| `next-themes` | ^0.4.6 | Tema claro/escuro | 🖥 Tela |
| `react` | 19.1.0 | Biblioteca que monta as telas do app | 🖥 Tela |
| `react-day-picker` | ^9.11.1 | Calendário para escolher datas | 🖥 Tela |
| `react-dom` | 19.1.0 | Coloca as telas do React no navegador | 🖥 Tela |
| `react-hook-form` | ^7.55.0 | Formulários (campos, validação) | 🖥 Tela |
| `react-icons` | ^5.4.0 | Ícones | 🖥 Tela |
| `react-resizable-panels` | ^2.1.7 | Painéis que mudam de tamanho | 🖥 Tela |
| `recharts` | ^2.15.2 | Gráficos | 🖥 Tela |
| `sonner` | ^2.0.7 | Avisos que aparecem no canto da tela | 🖥 Tela |
| `tailwind-merge` | ^3.3.1 | Junta classes do Tailwind sem conflito | 🎨 Estilo |
| `tailwindcss` | ^4.1.14 | Estilos prontos por classes (cores, espaços, tamanhos) | 🎨 Estilo |
| `tw-animate-css` | ^1.4.0 | Animações prontas para Tailwind | 🎨 Estilo |
| `vaul` | ^1.1.2 | Gaveta que sobe de baixo (celular) | 🖥 Tela |
| `vite` | ^7.3.2 | Monta (builda) o app e roda o modo de teste rápido | 🔧 Montagem |
| `wouter` | ^3.9.0 | Troca de páginas dentro do app (rotas) — leve | 🖥 Tela |
| `zod` | ^3.25.76 | Confere se os dados estão no formato certo | 🧰 Utilidade |

## 📦 sk-juridico-desktop — `artifacts/desktop/package.json`

- Arquivo principal: `main.js`

**Comandos (scripts):**

| Comando | O que faz | Executa |
|---|---|---|
| `start` | Liga a versão final | `electron .` |
| `dev` | Liga o app em modo de teste (atualiza sozinho) | `concurrently "node server.js" "electron . --dev"` |
| `build:win` | Gera a versão final (pasta dist) | `electron-builder --win --x64` |
| `build:mac` | Gera a versão final (pasta dist) | `electron-builder --mac` |
| `build:linux` | Gera a versão final (pasta dist) | `electron-builder --linux AppImage deb` |
| `build:all` | Gera a versão final (pasta dist) | `electron-builder --win --mac --linux` |

**Dependências (o app precisa) — 1:**

| Pacote | Versão | Pra que serve | Tipo |
|---|---|---|---|
| `electron-updater` | ^6.3.9 | (sem descrição — toque no nome para ver no npm) | ❔ |

**Dependências de montagem (dev) — 3:**

| Pacote | Versão | Pra que serve | Tipo |
|---|---|---|---|
| `concurrently` | ^9.1.0 | Liga servidor e tela ao mesmo tempo | 🔧 Montagem |
| `electron` | ^33.3.1 | Executável de computador (janela própria) | 💻 EXE |
| `electron-builder` | ^25.1.8 | Gera o .exe do Electron | 💻 EXE |

## 📦 @workspace/db — `lib/db/package.json`


**Comandos (scripts):**

| Comando | O que faz | Executa |
|---|---|---|
| `push` | — | `drizzle-kit push --config ./drizzle.config.ts` |
| `push-force` | — | `drizzle-kit push --force --config ./drizzle.config.ts` |

**Dependências (o app precisa) — 4:**

| Pacote | Versão | Pra que serve | Tipo |
|---|---|---|---|
| `drizzle-orm` | ^0.45.2 | Conversa com o banco de dados (Postgres) | 🛢 Banco |
| `drizzle-zod` | ^0.8.3 | Gera as regras do Zod a partir do banco | 🛢 Banco |
| `pg` | ^8.20.0 | Conexão com Postgres | 🛢 Banco |
| `zod` | ^3.25.76 | Confere se os dados estão no formato certo | 🧰 Utilidade |

**Dependências de montagem (dev) — 3:**

| Pacote | Versão | Pra que serve | Tipo |
|---|---|---|---|
| `@types/node` | ^25.3.3 | Tipos para o TypeScript — só para montar, pode ignorar | 📐 Tipos |
| `@types/pg` | ^8.18.0 | Tipos para o TypeScript — só para montar, pode ignorar | 📐 Tipos |
| `drizzle-kit` | ^0.31.9 | Cria/atualiza as tabelas do banco | 🛢 Banco |

## 📦 @workspace/sync-storage — `lib/sync-storage/package.json`


**Comandos (scripts):**

| Comando | O que faz | Executa |
|---|---|---|
| `typecheck` | Confere os tipos do TypeScript (não muda nada) | `tsc --noEmit` |

**Dependências de montagem (dev) — 1:**

| Pacote | Versão | Pra que serve | Tipo |
|---|---|---|---|
| `typescript` | catalog: (catalog) | JavaScript com tipos — só para montar, não vai pro app final | 🔧 Montagem |

## pnpm-workspace.yaml

```yaml
packages:
  - artifacts/*
  - lib/*
  - lib/integrations/*
  - scripts

autoInstallPeers: false

catalog:
  '@tailwindcss/vite': ^4.1.14
  '@tanstack/react-query': ^5.90.21
  '@types/node': ^25.3.3
  '@types/react': ^19.2.0
  '@types/react-dom': ^19.2.0
  '@vitejs/plugin-react': ^5.0.4
  class-variance-authority: ^0.7.1
  clsx: ^2.1.1
  drizzle-orm: ^0.45.2
  framer-motion: ^12.23.24
  lucide-react: ^0.545.0
  react: 19.1.0
  react-dom: 19.1.0
  tailwind-merge: ^3.3.1
  tailwindcss: ^4.1.14
  tsx: ^4.21.0
  vite: ^7.3.2
  wouter: ^3.9.0
  zod: ^3.25.76

minimumReleaseAge: 1440

minimumReleaseAgeExclude:
  - '@replit/*'
  - stripe-replit-sync

onlyBuiltDependencies:
  - '@swc/core'
  - esbuild
  - msw
  - unrs-resolver

overrides:
  '@esbuild-kit/esm-loader': npm:tsx@^4.21.0
  '@expo/ngrok-bin>@expo/ngrok-bin-darwin-arm64': '-'
  '@expo/ngrok-bin>@expo/ngrok-bin-darwin-x64': '-'
  '@expo/ngrok-bin>@expo/ngrok-bin-freebsd-ia32': '-'
  '@expo/ngrok-bin>@expo/ngrok-bin-freebsd-x64': '-'
  '@expo/ngrok-bin>@expo/ngrok-bin-linux-arm': '-'
  '@expo/ngrok-bin>@expo/ngrok-bin-linux-arm64': '-'
  '@expo/ngrok-bin>@expo/ngrok-bin-linux-ia32': '-'
  '@expo/ngrok-bin>@expo/ngrok-bin-sunos-x64': '-'
  '@expo/ngrok-bin>@expo/ngrok-bin-win32-ia32': '-'
  '@expo/ngrok-bin>@expo/ngrok-bin-win32-x64': '-'
  '@tailwindcss/oxide>@tailwindcss/oxide-android-arm64': '-'
  '@tailwindcss/oxide>@tailwindcss/oxide-darwin-arm64': '-'
  '@tailwindcss/oxide>@tailwindcss/oxide-darwin-x64': '-'
  '@tailwindcss/oxide>@tailwindcss/oxide-freebsd-x64': '-'
  '@tailwindcss/oxide>@tailwindcss/oxide-linux-arm-gnueabihf': '-'
  '@tailwindcss/oxide>@tailwindcss/oxide-linux-arm64-gnu': '-'
  '@tailwindcss/oxide>@tailwindcss/oxide-linux-arm64-musl': '-'
  '@tailwindcss/oxide>@tailwindcss/oxide-linux-x64-musl': '-'
  '@tailwindcss/oxide>@tailwindcss/oxide-win32-arm64-msvc': '-'
  '@tailwindcss/oxide>@tailwindcss/oxide-win32-x64-msvc': '-'
  esbuild: 0.27.3
  esbuild>@esbuild/aix-ppc64: '-'
  esbuild>@esbuild/android-arm: '-'
  esbuild>@esbuild/android-arm64: '-'
  esbuild>@esbuild/android-x64: '-'
  esbuild>@esbuild/darwin-arm64: '-'
  esbuild>@esbuild/darwin-x64: '-'
  esbuild>@esbuild/freebsd-arm64: '-'
  esbuild>@esbuild/freebsd-x64: '-'
  esbuild>@esbuild/linux-arm: '-'
  esbuild>@esbuild/linux-arm64: '-'
  esbuild>@esbuild/linux-ia32: '-'
  esbuild>@esbuild/linux-loong64: '-'
  esbuild>@esbuild/linux-mips64el: '-'
  esbuild>@esbuild/linux-ppc64: '-'
  esbuild>@esbuild/linux-riscv64: '-'
  esbuild>@esbuild/linux-s390x: '-'
  esbuild>@esbuild/netbsd-arm64: '-'
  esbuild>@esbuild/netbsd-x64: '-'
  esbuild>@esbuild/openbsd-arm64: '-'
  esbuild>@esbuild/openbsd-x64: '-'
  esbuild>@esbuild/openharmony-arm64: '-'
  esbuild>@esbuild/sunos-x64: '-'
  esbuild>@esbuild/win32-arm64: '-'
  esbuild>@esbuild/win32-ia32: '-'
  esbuild>@esbuild/win32-x64: '-'
  lightningcss>lightningcss-android-arm64: '-'
  lightningcss>lightningcss-darwin-arm64: '-'
  lightningcss>lightningcss-darwin-x64: '-'
  lightningcss>lightningcss-freebsd-x64: '-'
  lightningcss>lightningcss-linux-arm-gnueabihf: '-'
  lightningcss>lightningcss-linux-arm64-gnu: '-'
  lightningcss>lightningcss-linux-arm64-musl: '-'
  lightningcss>lightningcss-linux-x64-musl: '-'
  lightningcss>lightningcss-win32-arm64-msvc: '-'
  lightningcss>lightningcss-win32-x64-msvc: '-'
  rollup>@rollup/rollup-android-arm-eabi: '-'
  rollup>@rollup/rollup-android-arm64: '-'
  rollup>@rollup/rollup-darwin-arm64: '-'
  rollup>@rollup/rollup-darwin-x64: '-'
  rollup>@rollup/rollup-freebsd-arm64: '-'
  rollup>@rollup/rollup-freebsd-x64: '-'
  rollup>@rollup/rollup-linux-arm-gnueabihf: '-'
  rollup>@rollup/rollup-linux-arm-musleabihf: '-'
  rollup>@rollup/rollup-linux-arm64-gnu: '-'
  rollup>@rollup/rollup-linux-arm64-musl: '-'
  rollup>@rollup/rollup-linux-loong64-gnu: '-'
  rollup>@rollup/rollup-linux-loong64-musl: '-'
  rollup>@rollup/rollup-linux-ppc64-gnu: '-'
  rollup>@rollup/rollup-linux-ppc64-musl: '-'
  rollup>@rollup/rollup-linux-riscv64-gnu: '-'
  rollup>@rollup/rollup-linux-riscv64-musl: '-'
  rollup>@rollup/rollup-linux-s390x-gnu: '-'
  rollup>@rollup/rollup-linux-x64-musl: '-'
  rollup>@rollup/rollup-openbsd-x64: '-'
  rollup>@rollup/rollup-openharmony-arm64: '-'
  rollup>@rollup/rollup-win32-arm64-msvc: '-'
  rollup>@rollup/rollup-win32-ia32-msvc: '-'
  rollup>@rollup/rollup-win32-x64-gnu: '-'
  rollup>@rollup/rollup-win32-x64-msvc: '-'

```

## ⛔ Restos da Replit (tirar ou trocar)

- .sk/plano.md — 1 menção(ões)
- artifacts/api-server/src/routes/ai.ts — 3 menção(ões)
- artifacts/assistente-juridico/vite.config.ts — 4 menção(ões)
- MANUAL.md — 1 menção(ões)
- PLANO.md — 1 menção(ões)
- pnpm-workspace.yaml — 1 menção(ões)
- replit.md (arquivo da Replit)

## Arquivos importantes (53) — mandar estes para a IA

- `.env.example`
- `.github/workflows/apk-capacitor.yml`
- `.github/workflows/apk.yml`
- `.github/workflows/build-android.yml`
- `.github/workflows/build-desktop.yml`
- `.github/workflows/desktop-exe.yml`
- `2/_redirects`
- `app.json`
- `artifacts/api-server/build.mjs`
- `artifacts/api-server/package.json`
- `artifacts/api-server/src/index.ts`
- `artifacts/api-server/src/routes/ai.ts`
- `artifacts/api-server/src/routes/assinatura.ts`
- `artifacts/api-server/src/routes/auth-jwt.ts`
- `artifacts/api-server/src/routes/crud.ts`
- `artifacts/api-server/src/routes/drive-sync.ts`
- `artifacts/api-server/src/routes/extra.ts`
- `artifacts/api-server/src/routes/health.ts`
- `artifacts/api-server/src/routes/index.ts`
- `artifacts/api-server/src/routes/integracoes.ts`
- `artifacts/api-server/src/routes/jurisprudencia.ts`
- `artifacts/api-server/src/routes/pje.ts`
- `artifacts/api-server/src/routes/prazos.ts`
- `artifacts/api-server/src/routes/settings.ts`
- `artifacts/api-server/src/routes/status.ts`
- `artifacts/api-server/src/routes/upload.ts`
- `artifacts/api-server/tsconfig.json`
- `artifacts/assistente-juridico/package.json`
- `artifacts/assistente-juridico/public/manifest.json`
- `artifacts/assistente-juridico/src/App.tsx`
- `artifacts/assistente-juridico/src/main.tsx`
- `artifacts/assistente-juridico/tsconfig.json`
- `artifacts/assistente-juridico/vite.config.ts`
- `artifacts/desktop/main.js`
- `artifacts/desktop/package.json`
- `artifacts/desktop/preload.js`
- `capacitor.config.ts`
- `eas.json`
- `electron/main.cjs`
- `electron/preload.cjs`
- `lib/db/drizzle.config.ts`
- `lib/db/package.json`
- `lib/db/src/index.ts`
- `lib/db/src/schema/index.ts`
- `lib/db/tsconfig.json`
- `lib/sync-storage/package.json`
- `lib/sync-storage/src/index.ts`
- `lib/sync-storage/tsconfig.json`
- `manifest.json`
- `package.json`
- `pnpm-workspace.yaml`
- `tsconfig.base.json`
- `tsconfig.json`

## Estrutura completa (226 arquivos)

```
├── .github/
│   └── workflows/
│       ├── apk-capacitor.yml
│       ├── apk.yml
│       ├── build-android.yml
│       ├── build-desktop.yml
│       └── desktop-exe.yml
├── .sk/
│   └── plano.md
├── 2/
│   └── _redirects
├── android/
│   ├── app/
│   │   ├── src/
│   │   │   └── main/
│   │   │       ├── assets/
│   │   │       │   └── __ponte.js
│   │   │       ├── java/
│   │   │       │   └── app/
│   │   │       │       └── minisk/
│   │   │       │           └── shell/
│   │   │       │               └── MainActivity.java
│   │   │       ├── res/
│   │   │       │   ├── mipmap-xxxhdpi/
│   │   │       │   │   └── ic_launcher.png
│   │   │       │   └── xml/
│   │   │       │       └── rede.xml
│   │   │       └── AndroidManifest.xml
│   │   └── build.gradle
│   ├── build.gradle
│   ├── gradle.properties
│   └── settings.gradle
├── artifacts/
│   ├── api-server/
│   │   ├── src/
│   │   │   ├── lib/
│   │   │   │   ├── .gitkeep
│   │   │   │   └── logger.ts
│   │   │   ├── middleware/
│   │   │   │   └── jwt-auth.ts
│   │   │   ├── middlewares/
│   │   │   │   └── .gitkeep
│   │   │   ├── routes/
│   │   │   │   ├── ai.ts
│   │   │   │   ├── assinatura.ts
│   │   │   │   ├── auth-jwt.ts
│   │   │   │   ├── crud.ts
│   │   │   │   ├── drive-sync.ts
│   │   │   │   ├── extra.ts
│   │   │   │   ├── health.ts
│   │   │   │   ├── index.ts
│   │   │   │   ├── integracoes.ts
│   │   │   │   ├── jurisprudencia.ts
│   │   │   │   ├── pje.ts
│   │   │   │   ├── prazos.ts
│   │   │   │   ├── settings.ts
│   │   │   │   ├── status.ts
│   │   │   │   └── upload.ts
│   │   │   ├── app.ts
│   │   │   ├── file-storage.ts
│   │   │   ├── index.ts
│   │   │   ├── local-config.ts
│   │   │   └── storage.ts
│   │   ├── build.mjs
│   │   ├── package.json
│   │   └── tsconfig.json
│   ├── assistente-juridico/
│   │   ├── public/
│   │   │   ├── favicon.svg
│   │   │   ├── icon-192.png
│   │   │   ├── icon-512.png
│   │   │   ├── manifest.json
│   │   │   ├── opengraph.jpg
│   │   │   ├── robots.txt
│   │   │   └── sw.js
│   │   ├── src/
│   │   │   ├── components/
│   │   │   │   ├── ui/
│   │   │   │   │   ├── accordion.tsx
│   │   │   │   │   ├── alert-dialog.tsx
│   │   │   │   │   ├── alert.tsx
│   │   │   │   │   ├── aspect-ratio.tsx
│   │   │   │   │   ├── avatar.tsx
│   │   │   │   │   ├── badge.tsx
│   │   │   │   │   ├── breadcrumb.tsx
│   │   │   │   │   ├── button-group.tsx
│   │   │   │   │   ├── button.tsx
│   │   │   │   │   ├── calendar.tsx
│   │   │   │   │   ├── card.tsx
│   │   │   │   │   ├── carousel.tsx
│   │   │   │   │   ├── chart.tsx
│   │   │   │   │   ├── checkbox.tsx
│   │   │   │   │   ├── collapsible.tsx
│   │   │   │   │   ├── command.tsx
│   │   │   │   │   ├── context-menu.tsx
│   │   │   │   │   ├── dialog.tsx
│   │   │   │   │   ├── drawer.tsx
│   │   │   │   │   ├── dropdown-menu.tsx
│   │   │   │   │   ├── empty.tsx
│   │   │   │   │   ├── field.tsx
│   │   │   │   │   ├── form.tsx
│   │   │   │   │   ├── hover-card.tsx
│   │   │   │   │   ├── input-group.tsx
│   │   │   │   │   ├── input-otp.tsx
│   │   │   │   │   ├── input.tsx
│   │   │   │   │   ├── item.tsx
│   │   │   │   │   ├── kbd.tsx
│   │   │   │   │   ├── label.tsx
│   │   │   │   │   ├── menubar.tsx
│   │   │   │   │   ├── navigation-menu.tsx
│   │   │   │   │   ├── pagination.tsx
│   │   │   │   │   ├── popover.tsx
│   │   │   │   │   ├── progress.tsx
│   │   │   │   │   ├── radio-group.tsx
│   │   │   │   │   ├── resizable.tsx
│   │   │   │   │   ├── scroll-area.tsx
│   │   │   │   │   ├── select.tsx
│   │   │   │   │   ├── separator.tsx
│   │   │   │   │   ├── sheet.tsx
│   │   │   │   │   ├── sidebar.tsx
│   │   │   │   │   ├── skeleton.tsx
│   │   │   │   │   ├── slider.tsx
│   │   │   │   │   ├── sonner.tsx
│   │   │   │   │   ├── spinner.tsx
│   │   │   │   │   ├── switch.tsx
│   │   │   │   │   ├── table.tsx
│   │   │   │   │   ├── tabs.tsx
│   │   │   │   │   ├── textarea.tsx
│   │   │   │   │   ├── toast.tsx
│   │   │   │   │   ├── toaster.tsx
│   │   │   │   │   ├── toggle-group.tsx
│   │   │   │   │   ├── toggle.tsx
│   │   │   │   │   └── tooltip.tsx
│   │   │   │   ├── pwa-install.tsx
│   │   │   │   ├── theme-provider.tsx
│   │   │   │   ├── theme-toggle.tsx
│   │   │   │   └── tiptap-editor.tsx
│   │   │   ├── hooks/
│   │   │   │   ├── use-mobile.tsx
│   │   │   │   └── use-toast.ts
│   │   │   ├── lib/
│   │   │   │   ├── legal-formatter.ts
│   │   │   │   ├── queryClient.ts
│   │   │   │   ├── sync-storage.ts
│   │   │   │   └── utils.ts
│   │   │   ├── pages/
│   │   │   │   ├── admin.tsx
│   │   │   │   ├── assinatura.tsx
│   │   │   │   ├── auditoria-financeira.tsx
│   │   │   │   ├── codigo.tsx
│   │   │   │   ├── comparador-juridico.tsx
│   │   │   │   ├── comunicacoes-cnj.tsx
│   │   │   │   ├── configuracoes.tsx
│   │   │   │   ├── consulta-corporativo.tsx
│   │   │   │   ├── consulta-pdpj.tsx
│   │   │   │   ├── consulta-processual.tsx
│   │   │   │   ├── ementas.tsx
│   │   │   │   ├── escritorio.tsx
│   │   │   │   ├── filtrador.tsx
│   │   │   │   ├── historico.tsx
│   │   │   │   ├── jurisprudencia.tsx
│   │   │   │   ├── legal-assistant.tsx
│   │   │   │   ├── login.tsx
│   │   │   │   ├── not-found.tsx
│   │   │   │   ├── painel-processos.tsx
│   │   │   │   ├── pje.tsx
│   │   │   │   ├── playground.tsx
│   │   │   │   ├── prazos.tsx
│   │   │   │   ├── previdenciario.tsx
│   │   │   │   ├── robo-djen.tsx
│   │   │   │   ├── status.tsx
│   │   │   │   ├── templates-juridicos.tsx
│   │   │   │   ├── token-generator.tsx
│   │   │   │   └── tramitacao.tsx
│   │   │   ├── App.tsx
│   │   │   ├── index.css
│   │   │   └── main.tsx
│   │   ├── index.html
│   │   ├── package.json
│   │   ├── tsconfig.json
│   │   └── vite.config.ts
│   └── desktop/
│       ├── main.js
│       ├── package.json
│       └── preload.js
├── assets/
│   ├── apple-touch-icon-0bjmg_7d.png
│   ├── favicon-cmw39ln7.ico
│   ├── icon-ds_dca0k.svg
│   ├── index-c8wiwhew.js
│   ├── index-dpcc-epc.js
│   ├── index-duhakd9o.css
│   ├── manifest-sazxpdoz.json
│   └── pdf-b75moh95.js
├── electron/
│   ├── main.cjs
│   └── preload.cjs
├── icons/
│   ├── apple-touch-icon.png
│   ├── icon-128.png
│   ├── icon-144.png
│   ├── icon-152.png
│   ├── icon-16.png
│   ├── icon-180.png
│   ├── icon-192.png
│   ├── icon-32.png
│   ├── icon-384.png
│   ├── icon-48.png
│   ├── icon-512.png
│   ├── icon-72.png
│   ├── icon-96.png
│   ├── icon.svg
│   ├── maskable-192.png
│   ├── maskable-512.png
│   └── maskable.svg
├── lib/
│   ├── db/
│   │   ├── src/
│   │   │   ├── schema/
│   │   │   │   └── index.ts
│   │   │   └── index.ts
│   │   ├── drizzle.config.ts
│   │   ├── package.json
│   │   └── tsconfig.json
│   └── sync-storage/
│       ├── src/
│       │   └── index.ts
│       ├── package.json
│       └── tsconfig.json
├── scripts/
│   ├── build-apk.sh
│   ├── build-desktop.sh
│   ├── build-eas.sh
│   ├── export-zip.sh
│   └── start-servidor.sh
├── .env
├── .env.example
├── .gitignore
├── 404.html
├── apk.config.json
├── app.json
├── Atualização pelo Mini SK · maikonadvogadomg-alt_assistente-juridico-local-09-10-b6@fad7885 · GitHub
├── auditoria.html
├── capacitor.config.ts
├── codigo-formatacao.txt
├── comparador.html
├── docker-compose.yml
├── Dockerfile.api
├── eas.json
├── favicon.ico
├── favicon.png
├── hub.html
├── hub.webmanifest
├── icon-192.png
├── icon-512.png
├── index.html
├── manifest.json
├── manifest.webmanifest
├── MANUAL.md
├── nginx.conf
├── package.json
├── PLANO.md
├── pnpm-workspace.yaml
├── README.md
├── replit.md
├── service-worker.js
├── tsconfig.base.json
└── tsconfig.json
```
