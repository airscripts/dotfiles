#!/usr/bin/env bash
cat extensions.cfg | while read extension || [[ -n $extension ]];
do
  code --install-extension $extension --force
done
