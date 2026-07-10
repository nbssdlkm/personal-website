#!/usr/bin/env bash
# 构建并部署到 MiniPC（nbssdlkm.cn 主域，Caddy serve /var/www/html/public）
# 用 tar 管道而非 rsync：Windows Git Bash 没有 rsync，tar+ssh 两边都有（2026-07-10 实测）
# 台账提醒：跨境 Tailscale 直连大流量会被掐；dist 只有几十 K 没事，卡死就走 kala 跳板
set -euo pipefail

npm run build
tar cz -C dist . | ssh nbssdlkm@100.86.132.72 "rm -rf /var/www/html/public/* && tar xz -C /var/www/html/public"
echo "已部署 → https://nbssdlkm.cn"
