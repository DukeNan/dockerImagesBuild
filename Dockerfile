# 基于 Node 官方镜像
FROM node:20-alpine

# 安装构建依赖 + git + 最新 pnpm
RUN apk add --no-cache python3 make g++ git \
    && npm install -g pnpm@latest

# 设置工作目录
WORKDIR /app

# 默认命令：显示 pnpm 版本，可用于测试
CMD ["pnpm", "--version"]
