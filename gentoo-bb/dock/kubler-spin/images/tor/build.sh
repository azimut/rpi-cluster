#
# build config
#

# libpcap
#     apparently used to drop caps https://trac.torproject.org/projects/tor/ticket/8195
#     caps dropped here https://github.com/torproject/tor/blob/7505f452c865ef9ca5be35647032f93bfb392762/src/common/compat.c#L2000
#     docker caps kept https://github.com/docker/docker/blob/master/oci/defaults_linux.go#L62-L77
#     alpine is missing this...
_packages="sys-libs/libcap net-vpn/tor"

# force native compilation
_emerge_bin="emerge"

set -x

configure_bob(){
    update_keywords '=net-vpn/tor-0.3*' '+~amd64' 
    update_keywords 'sys-libs/libseccomp' '+~amd64'
    update_use 'sys-libs/libcap' '-pam'
}

configure_rootfs_build()
{
    provide_package 'app-text/asciidoc'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    # install custom minimal config - we do it here to be arch independent
    cp -v /config/etc/tor/torrc.default "${_EMERGE_ROOT}"/etc/tor/
    chown -R tor "${_EMERGE_ROOT}"/etc/tor/

    # clean up
    rm -rvf "${_EMERGE_ROOT}"/usr/lib/tmpfiles.d \
            "${_EMERGE_ROOT}"/usr/lib/systemd \
            "${_EMERGE_ROOT}"/etc/init.d \
            "${_EMERGE_ROOT}"/etc/conf.d

#    find "${_EMERGE_ROOT}"/lib/ "${_EMERGE_ROOT}"/usr/lib/ -type f -name '*.[ah]' -delete -print
}
