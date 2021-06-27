#!/bin/sh

sudo port install \
    bash \
	coreutils \
	diffutils \
	findutils \
	gawk \
	git \
	gnutar \
	grep \
	gsed \
	gzip \
	less \
	openssh \
	rsync \
	vim \
	zsh

echo "Use the GNU tools by default by adding /opt/local/libexec/gnubin/ to your PATH."