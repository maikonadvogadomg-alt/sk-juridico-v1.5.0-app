# Assistente Jurídico IA

Um assistente jurídico baseado em IA para advogados brasileiros, que gera petições, minutas e documentos jurídicos completos com formatação ABNT automática.

## Run & Operate

- `pnpm --filter @workspace/api-server run dev` — run the API server (port 8080, proxied at `/api`)
- `pnpm --filter @workspace/assistente-juridico run dev` — run the frontend (port 23893, proxied at `/`)
- `pnpm run typecheck` — full typecheck across all packages
- `pnpm run build` — typecheck + build all packages
- `pnpm --filter @workspace/db run push` — push DB schema changes (dev only)
- Required env: `DATABASE_URL` — Postgres connection string, `SESSION_SECRET` — session secret

## Stack

- pnpm workspaces, Node.js 24, TypeScript 5.9
- Frontend: React 18, Vite, TipTap v3 (editor único), Wouter, TanStack Query, Tailwind, shadcn/ui
- API: Express 5
- DB: PostgreSQL + Drizzle ORM
- Validation: Zod (`zod/v4`), `drizzle-zod`
- AI: @google/genai (Gemini), openai (OpenAI/Groq/OpenRouter/etc)
- PDF: pdfjs-dist (legado) para extração de texto
- Word: mammoth (extração) + docx (exportação)
- Build: esbuild (CJS bundle)

## Where things live

- `lib/db/src/schema/index.ts` — DB schema (source of truth)
- `artifacts/api-server/src/` — Express API server
  - `routes/ai.ts` — Rotas de IA (streaming SSE)
  - `routes/upload.ts` — Upload de arquivos (150MB, pdfjs-dist)
  - `routes/crud.ts` — CRUD de snippets, ementas, histórico, etc.
  - `routes/settings.ts` — Configurações e chaves de API
  - `routes/jurisprudencia.ts` — Busca no DataJud CNJ
  - `storage.ts` — Storage layer (PostgreSQL com fallback em memória)
  - `local-config.ts` — Config local em arquivo JSON
- `artifacts/assistente-juridico/src/` — Frontend React
  - `pages/legal-assistant.tsx` — Página principal (editor + IA)
  - `pages/configuracoes.tsx` — Configurações de chaves
  - `pages/jurisprudencia.tsx` — Busca de jurisprudência
  - `pages/ementas.tsx` — Biblioteca de ementas
  - `pages/historico.tsx` — Histórico de IA
  - `pages/codigo.tsx` — Assistente de código web
  - `components/tiptap-editor.tsx` — Editor TipTap v3 (único editor)
  - `lib/legal-formatter.ts` — Conversor ABNT: texto → HTML

## Architecture decisions

- **IA usa apenas chaves do usuário**: Nunca usa `AI_INTEGRATIONS_*` da Replit. Todas as chaves são armazenadas no banco de dados via `storage.setSetting()` e lidas com `getLocalConfig()` / `storage.getSetting()`.
- **Editor único TipTap v3**: O projeto original tinha múltiplos editores. Mantemos apenas TipTap v3 conforme bugfix #3.
- **Formatação ABNT automática**: O texto gerado pela IA passa por `plainTextToLegalHtml()` antes de entrar no TipTap, convertendo parágrafos em HTML com estilos ABNT (recuo 4cm, justificado, títulos em caixa alta centrados).
- **Upload 150MB**: multer configurado com `fileSize: 150 * 1024 * 1024`. PDF extraído com `pdfjs-dist` (não `pdf-parse`).
- **Storage com fallback**: Se o banco não está disponível, usa `MemoryStorage` em memória.

## Product

- Assistente principal: cole texto/dados, escolha uma ação (gerar minuta, resumir, revisar, etc.), clique em "Gerar com IA"
- O documento gerado aparece no editor TipTap com formatação ABNT automática
- Painel de refinamento via chat para ajustar o documento
- Importação de PDF, DOCX, TXT até 150MB
- Busca de jurisprudência via DataJud CNJ
- Biblioteca de ementas salvas
- Histórico de gerações de IA
- Exportação para DOCX
- Assistente de código web (HTML/CSS/JS com preview)
- Configurações: chaves Gemini, OpenAI, Groq, Perplexity, custom, DataJud CNJ

## User preferences

- Português brasileiro em toda a interface
- Formatação ABNT para documentos jurídicos
- Tema azul-marinho profissional (navy)

## Gotchas

- TipTap v3: `TextStyle` e `Color` são named exports de `@tiptap/extension-text-style` e `@tiptap/extension-color` respectivamente (não default exports). `BubbleMenu` não está disponível em `@tiptap/react` v3.
- `pg` e `pdfjs-dist` devem estar no array `external` do `build.mjs` do api-server.
- Nunca usar `AI_INTEGRATIONS_OPENAI_API_KEY` ou `AI_INTEGRATIONS_GEMINI_API_KEY` — apenas chaves do usuário via `storage.getSetting()` e `getLocalConfig()`.
- Para importar PDF: usar `pdfjs-dist/legacy/build/pdf.mjs` com `await import()` dinâmico (não `pdf-parse`).

## Pointers

- See the `pnpm-workspace` skill for workspace structure, TypeScript setup, and package details
