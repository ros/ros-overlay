# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit distutils-r1

DESCRIPTION="The command line tools for the ament buildsystem."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/0.4.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-ardent/ament_copyright )
	test? ( ros-ardent/ament_flake8 )
	test? ( ros-ardent/ament_pep257 )
"
DEPEND="${RDEPEND}
	ros-ardent/ament_package
	ros-ardent/osrf_pycommon
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
DISTUTILS_IN_SOURCE_BUILD="yes"

src_unpack() {
	default
	mv *${P}* ${P}
}

PATCHES=( "${FILESDIR}"//tmp/tmp7zam9cr7/ros-ardent/ament_tools/files/0001-Exclude-all-tests.patch )
