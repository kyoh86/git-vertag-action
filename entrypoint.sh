#!/bin/sh

set -e

method="${1}"

push="${2}"
if [ "${push}" = "true" ]; then
  push_opt1="--push-to"
  push_opt2="origin"
else
  push_opt1=""
  push_opt2=""
fi

git-vertag --fetch "${method}" "${push_opt1}" "${push_opt2}"

echo "::set-output name=vertag::$(git-vertag get)"
