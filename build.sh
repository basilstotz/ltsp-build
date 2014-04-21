#!/bin/sh

chroot="kiosk"

ltsp-build-client \
    --arch i386 \
    --skipimage \
    --purge-chroot \
    --chroot $chroot \
    --mirror http://localhost:3142/ch.archive.ubuntu.com/ubuntu/ \
    --install-debs-dir /etc/ltsp/debs \
    --fat-client \
    --fat-client-desktop ubuntu-desktop \
    --ldap-auth \
    --winery \
    --debconf-seeds /etc/ltsp/debconf.seeds \
    --andrijn-update "http://172.16.42.10/ltsp-images" \
    --ldm-themes-extra \
    --late-packages "language-pack-de language-pack-gnome-de  
                     language-pack-kde-de hyphen-de libreoffice-l10n-de 
                     myspell-de-ch mythes-de-ch emacs nmap xosview"
