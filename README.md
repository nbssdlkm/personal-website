# nbssdlkm.cn — 个人站 + 工具站

Astro 纯静态站，Ex Libris 设计系统（来自 [FicForge](https://github.com/nbssdlkm/FicForge)）。
设计文档：[docs/superpowers/specs/2026-07-10-personal-site-design.md](docs/superpowers/specs/2026-07-10-personal-site-design.md)

## 日常操作（不碰终端的编辑入口）

**首选：站点后台 https://nbssdlkm.cn/admin/** （Sveltia CMS）——发帖子、改关于页、管项目清单都是表单+富文本，保存即提交到 GitHub，≤5 分钟自动上线。登录方式：点「Sign In Using Access Token」，贴一个 GitHub PAT（对话框里有生成链接，权限已预选；只需给 personal-website 仓库的 Contents 读写）。

**备选：GitHub 网页直接改文件**，同样保存后 ≤5 分钟自动上线（MiniPC cron 拉取构建）：

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
