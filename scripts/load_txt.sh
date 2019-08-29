#!/bin/sh

awk '{ print $1 }' $1 | sed -r '/^#?\s*$/d' | awk 1 ORS=' '
