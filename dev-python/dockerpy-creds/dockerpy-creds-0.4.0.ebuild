# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Python bindings for the docker credentials store API"
HOMEPAGE="https://github.com/shin-/dockerpy-creds/"
SRC_URI="https://github.com/shin-/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}-gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/six-1.4.0[${PYTHON_USEDEP}]"
