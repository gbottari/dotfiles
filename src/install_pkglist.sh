#!/bin/bash

yaourt -S --needed $(grep -o '^[^#]*' pkglist.txt)
