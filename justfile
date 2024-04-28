#!/usr/bin/env just
# see: https://just.systems/man/en/

#
# general
#

# list all recipes
_default:
  @just --list --unsorted --justfile {{justfile()}}

#
# run
#

# preview current notebook
preview:
  #!/usr/bin/env bash
  # clean old files
  rm -rf _proc
  echo "Preview notebook in port 4000"
  nbdev_preview


# prepare notebook before publishing. WARNING: cleanup jupyter output
prepare:
  #!/usr/bin/env bash
  nbdev_prepare
