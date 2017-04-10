### kubler-spin/tor:20170326

Built: Mon Apr 10 07:49:52 ART 2017
Image Size: 24.45 MB

#### Installed
Package | USE Flags
--------|----------
dev-libs/libevent-2.1.8 | `libressl ssl threads -debug -static-libs {-test}`
net-vpn/tor-0.3.0.5_rc | `libressl seccomp -scrypt (-selinux) -systemd {-test} -tor-hardening -web`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-libs/libcap-2.24-r2 | `-pam -static-libs`
sys-libs/libseccomp-2.3.2 | `-static-libs`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM kubler-spin/libressl-glibc** |
app-misc/ca-certificates-20161130.3.30.1 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/libressl-2.4.5 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM kubler-spin/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r3 | `hardened rpc -audit -caps -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
**FROM gentoobb/busybox** |
sys-apps/busybox-1.25.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs