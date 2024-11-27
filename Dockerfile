FROM quay.io/hedgedoc/hedgedoc:1.9.9

ENV CMD_DB_URL=sqlite://data/notes.db \
    CMD_PROTOCOL_USESSL=true \
    CMD_SESSION_SECRET=change-this-secret

COPY config.json /hedgedoc/config.json
RUN mkdir -p /hedgedoc/data
