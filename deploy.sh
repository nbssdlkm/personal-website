#!/usr/bin/env bash
# 构建并部署到 MiniPC（nbssdlkm.cn 主域，Caddy serve /var/www/html/public）
# 台账提醒：跨境 Tailscale 直连大流量会被掐；dist 很小一般没事，
# 若 rsync 卡死，改走 kala 跳板：ssh administrator@100.115.110.62 中转
set -euo pipefail

npm run build
rsync -avz --delete dist/ nbssdlkm@100.86.132.72:/var/www/html/public/
echo "已部署 → https://nbssdlkm.cn"
