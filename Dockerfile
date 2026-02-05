# Minimal image - without hiiro gem
FROM ruby:3.3 AS minimal

RUN apt-get update && apt-get install -y \
    neovim \
    git \
    build-essential \
    ripgrep \
    fd-find \
    broot \
    zsh \
    tmux \
    golang \
    starship
RUN gem install pry
RUN go install github.com/maaslalani/slides@latest

WORKDIR /sandbox
CMD ["/bin/zsh"]

# Full image - with hiiro gem for presentation tools
FROM minimal AS full
RUN gem install hiiro
