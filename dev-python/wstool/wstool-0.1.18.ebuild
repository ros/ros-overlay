# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=8
PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Commands to manage several local SCM repositories for ROS"
HOMEPAGE="http://wiki.ros.org/wstool"

SRC_URI="http://github.com/vcstools/wstool/archive/${PV}.tar.gz -> ${P}.tar.gz"

KEYWORDS="~amd64 ~arm64 ~x86"

LICENSE="BSD"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-python/pyyaml[${PYTHON_USEDEP}]
	>=dev-python/vcstools-0.1.38[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-python/sphinx
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/coverage[${PYTHON_USEDEP}]
		dev-vcs/git
		dev-vcs/breezy
		dev-vcs/mercurial
		dev-vcs/subversion
	)
"

DISTUTILS_IN_SOURCE_BUILD="yes"

python_test() {
	# From travis.yml
	# Set git config to silence some stuff in the tests
	git config --global user.email "foo@example.com"
	git config --global user.name "Foo Bar"
	# Set the hg user
	echo -e "[ui]\nusername = Your Name <your@mail.com>" >> ~/.hgrc
	# Set the bzr user
	bzr whoami "Your Name <name@example.com>"
	# command to run tests
	nosetests --with-coverage --cover-package=wstool || die
}
