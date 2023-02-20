FROM debian:bookworm

ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm-256color
ENV LC_CTYPE="en_US.UTF-8"

ENV PACKAGES='git sudo curl'
ENV DEPENDENCY_PACKAGES='\
  # appImage to run nvim
  libfuse2 \
'

RUN apt update --yes --quiet && \
    apt install --yes --quiet $PACKAGES $DEPENDENCY_PACKAGES

WORKDIR /root

RUN git clone https://github.com/fathineos/configurations && \
    ./configurations/scripts/install_tmux.sh && \
    ./configurations/scripts/install_zsh.sh && \
    chsh -s /bin/zsh && \
    # Install latest version of nvim
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage && \
    chmod u+x nvim.appimage && \
    mv nvim.appimage /usr/local/bin/nvim && \
    ./configurations/scripts/install_vim.sh || true
