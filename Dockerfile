FROM quay.io/hedgedoc/hedgedoc:1.9.9

# 创建数据目录并设置正确的权限
RUN mkdir -p /hedgedoc/data && \
    chown -R hackmd:hackmd /hedgedoc/data && \
    chmod 755 /hedgedoc/data

# 设置工作目录
WORKDIR /hedgedoc

# 复制配置文件
COPY config.json /hedgedoc/config.json

# 设置环境变量，注意 PORT 设置
ENV CMD_DB_URL=sqlite:///hedgedoc/data/notes.db \
    PORT=3000

# 暴露端口
EXPOSE 3000

# 切换到正确的用户
USER hackmd
