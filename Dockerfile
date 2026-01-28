FROM node:24-bookworm

# Install clawdbot CLI
RUN npm install -g clawdbot@latest

# Run as non-root (в node-образі є юзер 'node')
USER node
WORKDIR /home/node

EXPOSE 18789

CMD ["sh","-lc","clawdbot gateway --port ${CLAWDBOT_GATEWAY_PORT:-18789} --verbose --allow-unconfigured"]
