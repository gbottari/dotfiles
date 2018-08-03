#!/bin/sh

git clone --depth 1 https://github.com/WolverineFan/YNABLinuxInstall.git

perl YNABLinuxInstall/YNAB4_LinuxInstall.pl

rm -rf YNABLinuxInstall
