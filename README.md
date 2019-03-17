# [VERY SIMPLE] Github User or Group/Organization Repository Backup
______
Line 13 can just be copied and pasted into your terminal, and switch out the
argument $1 with the group. 

```
#!/bin/sh

if [ -z = 1 ]; then 
  echo "[error] failed to supply name of user or group to backup\n"
  echo "  USAGE:"
  echo "    ./backup-repos.github.sh gnome"
else
  curl -s https://api.github.com/orgs/$1/repos?per_page=200 | jq -r '.[].clone_url' | xargs -n 1 git clone
fi
```


