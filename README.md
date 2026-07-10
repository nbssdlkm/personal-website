# nbssdlkm.cn — 个人站 + 工具站

Astro 纯静态站，Ex Libris 设计系统（来自 [FicForge](https://github.com/nbssdlkm/FicForge)）。
设计文档：[docs/superpowers/specs/2026-07-10-personal-site-design.md](docs/superpowers/specs/2026-07-10-personal-site-design.md)

## 日常操作

- **发帖子**：md 文件扔进 `src/content/posts/`（开头写 `title:` 和 `date:`），跑 `./deploy.sh`
- **加项目**：编辑 `src/data/projects.ts`
- **加工具**：在 `src/pages/tools/` 新建 `.astro` 文件，frontmatter 里 `export const title` / `description`，入口页自动收录
- **本地预览**：`npm run dev`
- **部署**：`./deploy.sh`（build + rsync 到 MiniPC）
