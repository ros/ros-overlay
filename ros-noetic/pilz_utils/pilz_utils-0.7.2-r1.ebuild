# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The pilz_utils package contains utilities used by Pilz packages"
HOMEPAGE="https://wiki.ros.org/pilz_utils"
SRC_URI="https://github.com/PilzDE/pilz_common-release/archive/release/noetic/${PN}/0.7.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-noetic/cmake_modules )
	test? ( ros-noetic/code_coverage )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roscpp
	sys-devel/clang
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
