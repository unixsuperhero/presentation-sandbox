FROM ruby:3.3

RUN apt-get update && apt-get install -y \
    neovim \
    git \
    build-essential \
    ripgrep \
    fd-find \
    zsh \
    && rm -rf /var/lib/apt/lists/*

ARG UID=1000
ARG GID=1000

RUN groupadd -g ${GID} dev && \
    useradd -m -u ${UID} -g ${GID} -s /bin/zsh dev

RUN mkdir -p /home/dev/.local/share/nvim /home/dev/.config && \
    chown -R dev:dev /home/dev

USER dev
WORKDIR /workspace

CMD ["/bin/zsh"]
