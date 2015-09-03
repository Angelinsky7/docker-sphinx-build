FROM ubuntu:15.04

MAINTAINER ryoheisonoda@outlook.com

CMD /bin/bash /build

# Setup Japanese environments
RUN apt-get install -y curl; \
    curl -L https://www.ubuntulinux.jp/ubuntu-ja-archive-keyring.gpg | apt-key add - ; \
    curl -L https://www.ubuntulinux.jp/ubuntu-jp-ppa-keyring.gpg | apt-key add - ; \
    curl -L https://www.ubuntulinux.jp/sources.list.d/vivid.list > /etc/apt/sources.list.d/ubuntu-ja.list; \
    apt-get update

# Install packages
RUN apt-get install -y \
    texlive texlive-lang-cjk openjdk-8-jdk graphviz python-pip python-dev  make fonts-ipafont-gothic \
    fonts-ipafont-mincho fonts-takao-pgothic fonts-takao-gothic fonts-takao-mincho

# Download PlantUML
RUN curl -L http://sourceforge.net/projects/plantuml/files/plantuml.jar/download > /plantuml.jar

# Install Sphinx, sphinxcontrib-*
RUN pip install Sphinx sphinxcontrib-plantuml sphinxcontrib-blockdiag sphinxcontrib-seqdiag 

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD build /build
