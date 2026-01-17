#!/bin/bash

cat > docker-compose.yml << EOF
services:
  sandbox:
    build:
      context: .
      args:
        UID: $(id -u)
        GID: $(id -g)
    stdin_open: true
    tty: true
    volumes:
      - ~/.config/nvim:/home/dev/.config/nvim:ro
      - ~/.zshrc:/home/dev/.zshrc:ro
      - nvim-data:/home/dev/.local/share/nvim
      - ./workspace:/workspace

volumes:
  nvim-data:
EOF

echo "Created docker-compose.yml with UID=$(id -u) GID=$(id -g)"
