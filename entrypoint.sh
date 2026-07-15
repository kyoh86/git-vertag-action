#!/bin/sh

set -e

method="${1}"
push="${2}"
tag="${3}"

if [ "${method}" = "validate" ]; then
  if [ -n "${tag}" ]; then
    vertag="$(git-vertag --fetch validate "${tag}")"
  else
    vertag="$(git-vertag --fetch validate)"
  fi
  echo "vertag=${vertag}" >> "${GITHUB_OUTPUT}"
  exit 0
fi

if [ "${push}" != "true" ]; then
  git-vertag --fetch "${method}"
else
  git-vertag --fetch "${method}" --push-to origin
fi

echo "vertag=$(git-vertag get)" >> "${GITHUB_OUTPUT}"
