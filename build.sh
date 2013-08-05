#!/bin/bash

set -u
set -e

TARBALL="target-${BUILD:-SNAPSHOT}.tar.gz"
rm -f ${TARBALL}

touch target
tar -czvf ${TARBALL} target

