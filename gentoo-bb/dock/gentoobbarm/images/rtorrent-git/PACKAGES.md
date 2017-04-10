### gentoobbarm/rtorrent-git:20170127

Built: Sun Feb 26 09:07:06 ART 2017
Image Size: 13.28 MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libsigc++-2.8.0 | `-doc -static-libs {-test}`
dev-libs/libxml2-2.9.4-r1 | `readline -debug -examples -icu -ipv6 -lzma -python -static-libs {-test}`
dev-libs/xmlrpc-c-1.39.11-r1 | `cgi curl cxx libxml2 threads -abyss {-test} -tools`
net-libs/libtorrent-9999 | `libressl ssl -debug {-test}`
net-misc/curl-7.53.0 | `ssl threads -adns -http2 -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
net-p2p/rtorrent-9999 | `xmlrpc -daemon -debug -ipv6 (-selinux) {-test}`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM gentoobbarm/libressl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161130.3.29.1 | `-cacert -insecure`
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM gentoobbarm/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM gentoobb/busybox** |
**FROM gentoobbarm/busybox** |
sys-apps/busybox-1.26.0 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs