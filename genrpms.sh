#!/bin/bash

target=/home/mhatina/Projects/repo
rm -rf $target
mkdir -p $target

for file in `find . | grep spec`
do
  rpmdev-bumpspec $file
  rpmbuild -ba $file
done

mv /home/mhatina/rpmbuild/RPMS/noarch/* $target

createrepo_c $target
