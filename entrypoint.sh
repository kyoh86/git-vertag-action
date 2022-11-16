#!/bin/sh

set -e

method="${1}"
push="${2}"

if [ "${push}" != "true" ]; then
  git-vertag --fetch "${method}"
else
  git-vertag --fetch "${method}" --push-to origin
fi

echo "vertag=$(git-vertag get) >> $GITHUB_OUTPUT"
