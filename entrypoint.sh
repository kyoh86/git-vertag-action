#!/bin/sh

set -e

method="${1}"
push="${2}"

if [ "${push}" != "true" ]; then
  git-vertag --fetch "${method}"
else
  git-vertag --fetch "${method}" --push-to origin
fi

echo "::set-output name=vertag::$(git-vertag get)"
