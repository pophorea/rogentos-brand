#!/bin/sh
if [ -d "${CHROOT_DIR}/proc" ]; then
	echo "Unmounting ${CHROOT_DIR}/proc"
	umount "${CHROOT_DIR}/proc"
fi

CHROOT_PKGS_DIR="${CHROOT_DIR}/var/lib/entropy/client/packages"
if [ -d "${CHROOT_PKGS_DIR}" ]; then
	echo "Umounting bind to ${CHROOT_PKGS_DIR}"
	umount "${CHROOT_PKGS_DIR}" || exit 1
fi
