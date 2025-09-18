#!/bin/sh

docker pull slatedocs/slate

docker run --rm --name slate \
-v $(pwd)/build:/srv/slate/build \
-v $(pwd)/source/index.html.md:/srv/slate/source/index.html.md \
-v $(pwd)/source/includes:/srv/slate/source/includes \
-v $(pwd)/source/images/logo.png:/srv/slate/source/images/logo.png \
slatedocs/slate build
