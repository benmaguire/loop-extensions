#!/bin/bash


LOOPDIR = ""


# Download patch files

# cd into loopworkspace dir

# Apply Patches
@echo ">>> Patching UI - LoopWorkspace AppIcons"
git apply --reject --whitespace=fix < ../../patches/01-ui-appicon.patch


@cd Loop

@echo ">>> Patching UI - Loop"
git apply --reject --whitespace=fix < ../../patches/01-ui-loop.patch

echo ">>> Patching Medical Device Lock Screen Widget"
git apply --reject --whitespace=fix < ../../patches/02-meddevwidget-draft.patch

