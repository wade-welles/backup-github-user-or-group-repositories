#!/bin/sh

if [ -z = 1 ]; then 
  echo "[error] failed to supply name of user or group to backup\n"
  echo "  USAGE:"
  echo "    ./backup-repos.github.sh gnome"
else
  curl -s https://api.github.com/orgs/ballerina-guides/repos?per_page=200 | jq -r '.[].clone_url' | xargs -n 1 git clone
fi

