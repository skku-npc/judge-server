FROM gitpod/workspace-full

USER gitpod

# Use default shell as zsh
ENV SHELL=zsh

# Set zsh theme
ENV ZSH_THEME gozilla

# Install seccomp for Judger
RUN sudo apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && sudo apt-get -y install --no-install-recommends libseccomp-dev

# Zsh setup
RUN wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh
