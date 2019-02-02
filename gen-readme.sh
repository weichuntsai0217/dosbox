#!/bin/bash

PROJ_NAME='dosbox'
PROJ_REPO="weichuntsai\\/${PROJ_NAME}"
PROJ_VER='1.1'

PTN_PROJ_NAME="s/\\\$PROJ_NAME\\\$/${PROJ_NAME}/g"
PTN_PROJ_REPO="s/\\\$PROJ_REPO\\\$/${PROJ_REPO}/g"
PTN_PROJ_VER="s/\\\$PROJ_VER\\\$/${PROJ_VER}/g"

DEP_NAME='xserver'
DEP_REPO="weichuntsai\\/${DEP_NAME}"
DEP_VER='1.1'

PTN_DEP_NAME="s/\\\$DEP_NAME\\\$/${DEP_NAME}/g"
PTN_DEP_REPO="s/\\\$DEP_REPO\\\$/${DEP_REPO}/g"
PTN_DEP_VER="s/\\\$DEP_VER\\\$/${DEP_VER}/g"

SRC='tpl-readme.md'
OUTPUT='README.md'
if [[ -n "$1" ]]; then
  OUTPUT="$1"
fi

sed -r -e "$PTN_PROJ_NAME" -e "$PTN_PROJ_REPO" -e "$PTN_PROJ_VER" -e "$PTN_DEP_NAME" -e "$PTN_DEP_REPO" -e "$PTN_DEP_VER" $SRC > $OUTPUT
