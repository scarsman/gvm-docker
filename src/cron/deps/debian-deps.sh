#!/usr/bin/env bash

# DEBIAN - BUILD

# cron

# base
BASE="
cron
"

# deps
DEPS="
"

# opt
OPT="
"

apt update -y && \
apt install -y --no-install-recommends --fix-missing ${BASE} ${DEPS} ${OPT}

# Remove packages
#apt remove -y ${BASE} ${DEPS} ${OPT}
apt autoremove -y
rm -rf /var/lib/apt/lists/*
