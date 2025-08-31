#!/bin/bash
set -e

workdir="work"
arch="x86_64"

conflicts=(
  "usr/lib/os-release"
  "etc/lsb-release"
)

for f in "${conflicts[@]}"; do
  if [ -e "$workdir/$arch/airootfs/$f" ]; then
    echo ">> Removing conflict: $workdir/$arch/airootfs/$f"
    rm -f "$workdir/$arch/airootfs/$f"
  fi
done

echo "Conflicts removed. Now run mkarchiso manually:"
echo "  mkarchiso -v -w $workdir -o out ."
