FROM ruby:3.3

RUN apt-get update && apt-get install -y \
    neovim \
    git \
    build-essential \
    ripgrep \
    fd-find \
    broot \
    zsh \
    tmux \
    starship
RUN gem install pry hiiro

ARG UID=1000
ARG GID=1000

RUN groupadd -g ${GID} dev 2>/dev/null || true && \
    useradd -m -u ${UID} -g ${GID} -s /bin/zsh dev

RUN mkdir -p /home/dev/.local/share/nvim /home/dev/.config && \
    chown -R ${UID}:${GID} /home/dev

USER dev
WORKDIR /sandbox

CMD ["/bin/zsh"]
