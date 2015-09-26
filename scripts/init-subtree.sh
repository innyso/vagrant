 #!/bin/bash

remote_exist=`git remote show | grep shared-ansible`

if [ -z "$remote_exist" ]; then
  git remote add shared-ansible https://github.com/innyso/ansible.git
fi

prefix=( "mysetup/ansible" "aptly/ansible")
for i in "${prefix[@]}"
do
  if [ ! -d "$i" ]; then
    git subtree add --prefix=$i --squash shared-ansible master
  fi
done
