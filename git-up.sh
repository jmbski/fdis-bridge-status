#!/bin/bash
update-git() {
    local _SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
    local _ORIGIN="$(pwd)"
    local _COMMIT_MSG="$1"

    if [ -z "$_COMMIT_MSG" ]; then
        _COMMIT_MSG="Updating pages"
    fi

    cd $_SCRIPT_DIR
    git add .
    git commit -m "$_COMMIT_MSG"
    git push
}

update-git