#!/bin/sh
# https://confluence.atlassian.com/bitbucket/set-up-ssh-for-git-728138079.html
# 1. Check ssh
ssh -v

# TODO: install ssh if necessary

# 2. Check that directory is empty
ls -a ~/.ssh
# TODO: if not empty - skip next step

# 3. Universal keygenerator 
# http://unix.stackexchange.com/questions/69314/automated-ssh-keygen-without-passphrase-how
# cat /dev/zero | ssh-keygen -q -N ""

# 4. Check ssh-agent
ps -e | grep [s]sh-agent

# TODO: If not ssh agent - run it, other - just add key

# 4a. Run ssh agent
ssh-agent /bin/bash

# 5. Add key to agent
ssh-add ~/.ssh/id_rsa

# 6. Show public key
cat ~/.ssh/id_rsa.pub

exit 0