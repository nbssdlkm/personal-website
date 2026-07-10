# nbssdlkm.cn — 个人站 + 工具站

Astro 纯静态站，Ex Libris 设计系统（来自 [FicForge](https://github.com/nbssdlkm/FicForge)）。
设计文档：[docs/superpowers/specs/2026-07-10-personal-site-design.md](docs/superpowers/specs/2026-07-10-personal-site-design.md)

## 日常操作（不碰终端的编辑入口）

**在 GitHub 网页上直接改，保存后 ≤5 分钟自动上线**（MiniPC cron 拉取构建）：

- **发帖子**：仓库页面进 `src/content/posts/` → Add file，文件开头写：
  ```
  ---
  title: 标题
  date: 2026-07-15
  ---
  ```
  正文贴 markdown，Commit 保存即可
- **改页面文字**：`src/pages/` 下对应文件（about.astro 等），网页编辑器直接改
- **加项目**：编辑 `src/data/projects.ts`

## 开发者操作

- **加工具**：在 `src/pages/tools/` 新建 `.astro` 文件，frontmatter 里 `export const title` / `description`，入口页自动收录
- **本地预览**：`npm run dev`
- **立即部署（不等 cron）**：`./deploy.sh`（build + tar 管道到 MiniPC）
- 自动部署脚本在 MiniPC `~/bin/site-autodeploy.sh`，日志 `~/site-autodeploy.log`；MiniPC 的 `~/personal-website` 是只读镜像，别在那边直接改
