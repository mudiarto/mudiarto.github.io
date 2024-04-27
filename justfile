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
  nbdev_preview


# prepare notebook before publishing. WARNING: cleanup jupyter output
prepare:
  #!/usr/bin/env bash
  nbdev_prepare
