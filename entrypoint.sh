#!/bin/sh

set -e

method="${1}"
push="${2}"

if [ "${push}" != "true" ]; then
  push=""
fi

git-vertag --fetch "${method}" ${push:+"--push-to origin"}

echo "::set-output name=vertag::$(git-vertag get)"
