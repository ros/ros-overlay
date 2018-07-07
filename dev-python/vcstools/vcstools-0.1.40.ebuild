# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license
EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit distutils-r1

DESCRIPTION="Library for managing source code trees."
HOMEPAGE="http://wiki.ros.org/vcstools"
SRC_URI="https://github.com/${PN}/${PN}/archive/${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
        dev-python/pyyaml[${PYTHON_USEDEP}]
        dev-python/python-dateutil[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
