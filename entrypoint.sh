#!/bin/sh

set -e

git-vertag --fetch "${1}"
echo "::set-output name=vertag::$(git-vertag get)"
