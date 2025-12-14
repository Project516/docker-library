#!/bin/bash

set -e

export DEBIAN_FRONTEND=noninteractive
export DEBCONF_NONINTERACTIVE_SEEN=true

debconf-set-selections << EOF
locales         locales/locales_to_be_generated         multiselect     en_US.UTF-8 UTF-8
locales         locales/default_environment_locale      select          en_US.UTF-8
EOF


apt-get update --yes
apt-get install --yes --no-install-recommends \
    alsa-utils \
    avahi-daemon \
    beep \
    bluez \
    bsdmainutils \
    ca-certificates \
    connman \
    console-setup \
    conspy \
    curl \
    dosfstools \
    espeak-ng \
    ethtool \
    evtest \
    fake-hwclock \
    fbcat \
    fbset \
    file \
    firmware-ath9k-htc \
    firmware-libertas \
    firmware-linux-free \
    firmware-misc-nonfree \
    firmware-realtek \
    wireless-regdb \
    flash-kernel \
    fontconfig \
    i2c-tools \
    ifupdown \
    iproute2 \
    iptables \
    iputils-ping \
    isc-dhcp-client \
    kmod \
    less \
    libnss-mdns \
    libnss-myhostname \
    libnss-resolve \
    libpam-systemd \
    locales \
    nano \
    net-tools \
    netbase \
    netcat-openbsd \
    netpbm \
    ntpsec \
    parted \
    procps \
    psmisc \
    python3 \
    python3-evdev \
    python3-pil \
    python3-serial \
    screen \
    ssh \
    sudo \
    systemd-sysv \
    tree \
    usb-modeswitch \
    usbutils \
    vim \
    vorbis-tools \
    wget \
    wpasupplicant \
    xfonts-100dpi \
    xfonts-75dpi \
    xfonts-base \
    xfonts-efont-unicode \
    xfonts-efont-unicode-ib \
    xfonts-unifont

# work around https://github.com/ev3dev/brickstrap/issues/63
chmod u+s /bin/ping
