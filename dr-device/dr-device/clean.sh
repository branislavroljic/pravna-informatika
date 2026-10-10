#!/bin/bash
# Pokrece ORIGINALNI clean.bat kroz Wine u Docker kontejneru
export PATH="$HOME/.docker/bin:/usr/local/bin:$PATH"
cd "$(dirname "$0")"
docker run --rm --platform linux/amd64 -v "$PWD":/work drdevice-wine wine cmd /c clean.bat
