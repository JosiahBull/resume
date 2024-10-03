FROM ubuntu:24.04

# Workaround for macos: https://stackoverflow.com/questions/67732260/how-to-fix-hash-sum-mismatch-in-docker-on-mac
RUN echo "Acquire::http::Pipeline-Depth 0;" > /etc/apt/apt.conf.d/99custom && \
    echo "Acquire::http::No-Cache true;" >> /etc/apt/apt.conf.d/99custom && \
    echo "Acquire::BrokenProxy    true;" >> /etc/apt/apt.conf.d/99custom

# XXX: Eventually won't need 'sudo' here.
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Pacific/Auckland
RUN apt-get update && apt-get install -y curl sudo tzdata

# Install dotfiles.
RUN curl https://raw.githubusercontent.com/JosiahBull/dotfiles/main/install.sh | bash

# Install everything reuqired to build the resume.
RUN apt-get install -y texlive \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    poppler-utils \
    texlive-xetex

# Install pre-commit
RUN pip3 install pre-commit

# Set the shell to zsh
RUN chsh -s /bin/zsh
SHELL ["/bin/zsh", "-c"]
