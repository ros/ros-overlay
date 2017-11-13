# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} pypy3 )

inherit distutils-r1

DESCRIPTION="Command line tool to send GitHub pull requests."
HOMEPAGE="https://github.com/jd/git-pull-request"
SRC_URI="https://github.com/jd/${PN}/archive/${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"

RDEPEND="
	dev-python/pbr[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"

PATCHES="${FILESDIR}/fix-setup-cfg.patch"
