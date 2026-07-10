// 项目清单：作品集页与首页精选共读此文件（单一事实来源）。
// spec 写的是 projects.yaml；改用 .ts 是为了零解析依赖，字段与 spec 一致。
export interface Project {
  name: string;
  tagline: string;
  url: string;
  image?: string;
  featured?: boolean;
}

export const projects: Project[] = [
  {
    name: 'FicForge',
    tagline: 'AI 辅助长篇同人写作工具。开源，从零到一独立完成。',
    url: 'https://github.com/nbssdlkm/FicForge',
    featured: true,
  },
];
