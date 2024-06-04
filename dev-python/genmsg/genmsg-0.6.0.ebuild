# Copyright 2024-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Standalone Python library for generating ROS message and service data structures for various languages"
HOMEPAGE="https://github.com/ros/genmsg"
SRC_URI="https://github.com/ros/genmsg/archive/refs/tags/${PV}.tar.gz -> ${PN}-${PV}.gh.tar.gz"

KEYWORDS="~amd64 ~x86"
LICENSE="BSD"
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

distutils_enable_tests pytest
