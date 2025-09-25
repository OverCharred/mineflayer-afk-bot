FROM node:current

ARG buildno
ARG commitsha

LABEL maintainer="Jordan Jones <me@jordanjones.org>" \
      repository="https://github.com/Kashalls/MinecraftAFKBot"

RUN mkdir -p /opt/minecraftafkbot
WORKDIR /opt/minecraftafkbot

COPY package.json yarn.lock ./

RUN yarn install --production

COPY . .

# Start the bot
CMD ["node", "."]
