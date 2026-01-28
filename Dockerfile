FROM node:24-bookworm

# Install moltbot from npm (stable)
RUN npm install -g moltbot@latest

# Run as non-root and keep config in /home
ENV HOME=/home/nodeuser
USER nodeuser
WORKDIR /home/nodeuser

EXPOSE 18789

CMD ["sh","-lc","moltbot gateway --port ${CLAWDBOT_GATEWAY_PORT:-18789} --verbose --allow-unconfigured"]

