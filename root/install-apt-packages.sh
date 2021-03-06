#!/bin/sh
apt-get update &&  \
apt-get install -y --no-install-recommends \
  unzip \
  zip \
  libgtk2.0-0 \
  libgconf-2-4 \
  libnss3 \
  libasound2 \
  libxtst6 \
  libnotify4 \
  libxkbfile1 \
  libsecret-1-0 \
  libx11-xcb1 \
  libxss1 \
  dbus-x11 \
  vim \
  openjdk-11-jdk-headless \
  maven \
  python-sphinx \
  python-yaml \
  texlive-latex-base \
  texlive-fonts-recommended \
  texlive-latex-extra \
  terminator && \
  zip

