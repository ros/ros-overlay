# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit versionator
inherit cmake-utils

PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit python-r1

MY_PN="GeographicLib"
MY_PV="$(replace_version_separator 2 '-')"
MY_P="${MY_PN}-${MY_PV}"

DESCRIPTION="C++ library for converting geographic coordinate systems."
HOMEPAGE="https://sourceforge.net/projects/geographiclib/"
SRC_URI="https://sourceforge.net/projects/${PN}/files/distrib/${MY_P}.tar.gz/download -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="doc static-libs"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}"
DEPEND="${RDEPEND}
	doc? (
		>=app-doc/doxygen-1.8.7
		>=dev-python/sphinx-1.6.3-r2
		>=dev-lang/perl-5.26.1-r1
		>=sys-apps/util-linux-2.31
	)
	>=dev-libs/boost-1.65.0[${PYTHON_USEDEP}]
"

S=${WORKDIR}/${MY_P}

src_configure() {
	local mycmakeargs=(
		-DGEOGRAPHICLIB_DOCUMENTATION=$(usex doc ON OFF)
		-DGEOGRAPHICLIB_LIB_TYPE=$(usex static-libs BOTH SHARED)
	)
	cmake-utils_src_configure
}
