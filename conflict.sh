#!/bin/bash
touch /home/vagrant/gittest/my_code.sh
git add my_code.sh
echo "echo Hello" > /home/vagrant/gittest/my_code.sh
git commit -am 'initial'
git checkout -b new_branch
echo "echo \"Hello World\"" > /home/vagrant/gittest/my_code.sh
git commit -am 'first commit on new_branch'
git checkout master
echo "echo \"Hello World!\"" > /home/vagrant/gittest/my_code.sh
git commit -am 'second commit on master'
git merge new_branch

