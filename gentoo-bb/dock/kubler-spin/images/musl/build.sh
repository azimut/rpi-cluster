#
# build config
#
_packages="sys-libs/musl"
_emerge_bin="emerge"
TIMEZONE="${BOB_TIMEZONE:-UTC}"
set -x
configure_bob() {
    # set timezone
    echo "${TIMEZONE}" > /etc/timezone
}

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    # as we broke the normal builder chain, recreate the docs for the busybox image
    init_docs 'kubler-spin/busybox'
    update_use 'sys-apps/busybox' '+static' '+make-symlinks'
    generate_doc_package_installed 'sys-apps/busybox'
    # fake portage install
    provide_package sys-apps/portage
    # set locales
    mkdir -p "${_EMERGE_ROOT}"/etc
    # set timezone
    cp /etc/timezone "${_EMERGE_ROOT}"/etc/
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}