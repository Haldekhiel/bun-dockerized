# FROM debian:bullseye-slim

# WORKDIR /app

# ENV BUN_INSTALL=/root/.bun
# ENV PATH=$BUN_INSTALL/bin:$PATH

# RUN sudu apt install unzip

# RUN apt-get update && \
#     apt-get install -y curl git build-essential && \
#     curl -fsSL https://bun.sh/install | bash 
    

# COPY package.json ./

# RUN bun install

# COPY . .

# EXPOSE 3000

# CMD ["bun", "run", "./server.tsx"]


FROM oven/bun
COPY . .
RUN bun install
CMD ["bun", "server.tsx"]