# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="The parser for the manifest files in the ament buildsystem."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/bouncy/${PN}/0.5.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	dev-python/setuptools
	test? ( dev-python/flake8 )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
