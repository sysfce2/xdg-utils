#!/bin/sh
COMMAND_TESTED=xdg-icon-resource
. ./test-lib.sh

test_that_it installs a png icon system-wide
touch $LABDIR/icon.png
run generic xdg-icon-resource install --mode system --size 256 \
    $LABDIR/icon.png myvendor-myapp
assert_file_exists $XDG_DATA_DIR_LOCAL/icons/hicolor/256x256/apps/myvendor-myapp.png

test_that_it installs an svg icon system-wide
touch $LABDIR/icon.svg
run generic xdg-icon-resource install --mode system --size scalable \
    $LABDIR/icon.svg myvendor-myapp
assert_file_exists $XDG_DATA_DIR_LOCAL/icons/hicolor/scalable/apps/myvendor-myapp.svg

test_that_it installs an xpm icon system-wide
touch $LABDIR/icon.xpm
run generic xdg-icon-resource install --mode system --size 256 \
    $LABDIR/icon.xpm myvendor-myapp
assert_file_exists $XDG_DATA_DIR_LOCAL/icons/hicolor/256x256/apps/myvendor-myapp.xpm
