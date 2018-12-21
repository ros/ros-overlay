# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

MY_PN=${PN/-bin/}
inherit eutils gnome2-utils unpacker

DESCRIPTION="NVIDIA Docker"
HOMEPAGE="https://github.com/NVIDIA/nvidia-docker"
SRC_URI="https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1-1_amd64.deb"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	app-emulation/docker
"

                                                                     
S=${WORKDIR}

RESTRICT="mirror bindist"

src_unpack() {
	unpack_deb ${A}
}

src_install() {
	insinto /opt/${MY_PN}
	doins -r usr/.

	fperms +x /opt/${MY_PN}/bin/${MY_PN}
	fperms +x /opt/${MY_PN}/bin/${MY_PN}-plugin

	dosym ../../opt/${MY_PN}/bin/${MY_PN} /usr/bin/${MY_PN}
	dosym ../../opt/${MY_PN}/bin/${MY_PN}-plugin /usr/bin/${MY_PN}-plugin

	dosym ../../opt/${MY_PN}/share/lintian/overrides/${MY_PN} /usr/share/lintian/overrides/${MY_PN}
	dosym ../../opt/${MY_PN}/share/doc/${MY_PN} /usr/share/doc/${MY_PN}

}
