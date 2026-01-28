FROM node:22-bookworm

# Install moltbot from npm (stable)
RUN npm install -g moltbot@latest

# Run as non-root and keep config in /home
ENV HOME=/home/node
RUN useradd -m nodeuser
USER nodeuser
WORKDIR /home/node

EXPOSE 18789

CMD ["moltbot","gateway","--port","18789","--verbose","--allow-unconfigured"]
