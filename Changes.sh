#!/bin/bash

## Returns the full path to any changed files in the current directory
## or any subdirectories recursively one to a line. Useful for detecting
## changes and taking action.

changed () {
  local dir="${PWD}"
  local tmpname="onchange${dir//\//-}"
  local tmp="/tmp/${tmpname}"
  if [[ ! -e "${tmp}" ]]; then
    find "${dir}" -type f
  else
    find "${dir}" -newer "${tmp}" -type f
  fi
  touch "${tmp}"

}

changed "$@"
