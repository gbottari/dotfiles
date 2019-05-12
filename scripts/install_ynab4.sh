#!/bin/sh

git clone --depth 1 https://github.com/gbottari/YNABLinuxInstall /tmp

perl /tmp/YNABLinuxInstall/YNAB4_LinuxInstall.pl

rm -rf /tmp/YNABLinuxInstall