FROM --platform=linux/amd64 debian:13

ENV DEBIAN_FRONTEND=noninteractive
RUN dpkg --add-architecture i386 \
 && apt-get update \
 && apt-get install -y --no-install-recommends wine wine64 wine32:i386 ca-certificates curl jq unzip \
 && rm -rf /var/lib/apt/lists/*

ENV WINEPREFIX=/wine \
    WINEARCH=win64 \
    WINEDEBUG=-all \
    WINEDLLOVERRIDES="mscoree,mshtml="

RUN wineboot --init && wineserver --wait

RUN set -eux; \
    info=$(curl -fsSL 'https://api.adoptium.net/v3/assets/latest/17/hotspot?os=windows&architecture=x64&image_type=jre&vendor=eclipse'); \
    url=$(echo "$info" | jq -r '.[0].binary.package.link'); \
    sum=$(echo "$info" | jq -r '.[0].binary.package.checksum'); \
    curl -fsSL -o /tmp/jre.zip "$url"; \
    echo "$sum  /tmp/jre.zip" | sha256sum -c -; \
    unzip -q /tmp/jre.zip -d /tmp/jre; \
    mv /tmp/jre/* "$WINEPREFIX/drive_c/java"; \
    rm -rf /tmp/jre /tmp/jre.zip

ENV WINEPATH="C:\\java\\bin"

ENV QEMU_CPU=Westmere

WORKDIR /work
