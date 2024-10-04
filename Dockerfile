FROM ghcr.io/josiahbull/dotfiles:main

# Install everything reuqired to build the resume.
RUN apt-get install -y texlive \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    poppler-utils \
    texlive-xetex

# Set the shell to zsh
RUN chsh -s /bin/zsh
SHELL ["/bin/zsh", "-c"]
