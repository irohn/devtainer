FROM ubuntu:22.04

# Set default user that is not root
ARG USER=user
ARG UID=1000

USER user

# Default powerline10k theme, no plugins installed
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.4/zsh-in-docker.sh)"

ENTRYPOINT /bin/zsh