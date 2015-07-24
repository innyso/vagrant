 #!/bin/bash

remote_exist=`git branch -r | grep shared-ansible`

if [ -z "$remote_exist" ]; then
  git remote add shared-ansible https://github.com/innyso/ansible.git
fi

git subtree add --prefix=mysetup/ansible --squash shared-ansible master
