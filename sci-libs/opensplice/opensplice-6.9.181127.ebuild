EAPI=5

DESCRIPTION="Opensplice DDS Implementation"
KEYWORDS="~amd64"
LICENSE="Apache-2.0"
HOMEPAGE="http://www.prismtech.com/vortex/vortex-opensplice"
SRC_URI="https://github.com/ADLINK-IST/opensplice/releases/download/OSPL_V6_9_181127OSS_RELEASE/PXXX-VortexOpenSplice-6.9.181127OSS-HDE-x86_64.linux-gcc7-glibc2.27-installer.tar.gz -> ${PN}-${PV}.tar.gz"
SLOT="0/0"

src_unpack() {
	default
	mv HDE ${P}
}

src_configure() {
	echo ""
}

src_compile() {
	echo ""
}

src_install() {
	mkdir ${D}/opt
	cp -R ${S}/x86_64.linux ${D}/opt/${P}
	dosym /opt/${P} /opt/${PN}
}
