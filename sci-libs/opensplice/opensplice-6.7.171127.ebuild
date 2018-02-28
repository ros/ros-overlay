EAPI=5

DESCRIPTION="Opensplice DDS Implementation"
KEYWORDS="~amd64"
LICENSE="Apache-2.0"
HOMEPAGE="http://www.prismtech.com/vortex/vortex-opensplice"
SRC_URI="https://github.com/ADLINK-IST/opensplice/releases/download/OSPL_V6_7_171127OSS_RELEASE/PXXX-VortexOpenSplice-6.7.171127OSS-HDE-x86_64.linux-gcc5.4.0-glibc2.23-installer.tar.gz -> opensplice.tar.gz"
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
