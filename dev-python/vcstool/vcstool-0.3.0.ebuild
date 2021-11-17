# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license
EAPI=8
PYTHON_COMPAT=( python3_{8..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Command line tool for handling multiple repositories"
HOMEPAGE="http://github.com/dirk-thomas/vcstool"
SRC_URI="https://github.com/dirk-thomas/${PN}/archive/${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
        dev-python/pyyaml[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
