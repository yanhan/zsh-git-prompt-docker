FROM haskell:8.2.1

WORKDIR /root

RUN apt-get update && \
  apt-get -y upgrade

# make and xz-utils are required to build ghc 7.10.3, which is required by
# zsh-git-prompt
RUN apt-get install -y \
  curl \
  make \
  xz-utils \
  zsh

# Need to set these to successfully install oh-my-zsh
ENV TERM=xterm
ENV SHELL=/bin/bash

# Install oh-my-zsh
RUN \
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

RUN \
  git clone https://github.com/olivierverdier/zsh-git-prompt.git && \
  cd zsh-git-prompt && \
  stack setup && \
  stack build && \
  stack install

ADD append-to-zshrc.sh .

RUN \
  tee -a ~/.zshrc < append-to-zshrc.sh && \
  rm append-to-zshrc.sh

ENTRYPOINT ["/bin/zsh"]
