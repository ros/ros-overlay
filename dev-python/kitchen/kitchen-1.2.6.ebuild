# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8
PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="Kitchen contains a cornucopia of useful code"
HOMEPAGE="https://fedorahosted.org/kitchen"

LICENSE="LGPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
