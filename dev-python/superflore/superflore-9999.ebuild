# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=8
PYTHON_COMPAT=( python3_{8..12} pypy )
DISTUTILS_USE_PEP517=setuptools

inherit git-r3 distutils-r1

EGIT_REPO_URI="https://github.com/ros-infrastructure/${PN}.git"
SRC_URI=""

DESCRIPTION="Super Bloom - an extended release manager for ROS"
HOMEPAGE="https://pypi.python.org/pypi/superflore/"

LICENSE="( Apache-2.0 MIT )"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64 ~arm"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-python/xmltodict
	dev-python/termcolor
	dev-python/setuptools
	dev-python/rosinstall_generator
	dev-python/rosdistro
	dev-python/catkin_pkg
	dev-util/rosdep
	dev-python/GitPython
	dev-python/PyGithub
	dev-python/pyyaml
	dev-python/docker
	dev-python/requests
	dev-vcs/git
	dev-lang/python
	app-containers/docker-cli"
DEPEND="${RDEPEND}
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/flake8[${PYTHON_USEDEP}]
	)
	"

python_test() {
>---nosetests --with-coverage --cover-package=rospkg --with-xunit test || die
}
