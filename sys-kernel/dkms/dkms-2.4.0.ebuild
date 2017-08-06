# Copyright 1999-2017 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2

inherit eutils bash-completion-r1

DESCRIPTION="Dynamic Kernel Module Support"
SRC_URI="https://github.com/dell/${PN}/archive/v${PV}.tar.gz"
HOMEPAGE="http://linux.dell.com/dkms"
LICENSE="GPL-2"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
SLOT="0"

src_install () {
	sed -i "s:prepare-all:prepare:g" ./dkms || die
	dosbin dkms
	dosbin dkms_mkkerneldoth

	keepdir /var/lib/dkms
	insinto /var/lib/dkms
	doins dkms_dbversion

	keepdir /etc/dkms
	insinto /etc/dkms
	newins dkms_framework.conf framework.conf
	doins template-dkms-mkrpm.spec

	doman dkms.8
	dodoc AUTHORS COPYING sample.conf sample.spec

	if use bash-completion; then
		dobashcompletion ./dkms.bash-completion
	fi
}
