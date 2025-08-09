
FROM node:18-alpine
LABEL maintainer="Pesnya Stanislav <pspesnya@gmail.com>"
LABEL purpose="Semantic Release with GitHub support"
# Устанавливаем необходимые плагины Semantic Release
RUN npm install -g \
    semantic-release \
    @semantic-release/commit-analyzer \
    @semantic-release/release-notes-generator \
    @semantic-release/changelog \
    @semantic-release/git \
    @semantic-release/github
# По умолчанию — запуск semantic-release
ENTRYPOINT ["semantic-release"]
