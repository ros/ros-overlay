# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package contains the description \(mechanical, kinematic, visual,\
  e[...]"
HOMEPAGE="http://ros.org/wiki/pr2_description"
SRC_URI="https://github.com/pr2-gbp/pr2_common-release/archive/release/noetic/${PN}/1.13.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/xacro
	test? ( ros-noetic/rosbash )
	test? ( dev-cpp/gtest )
	test? ( dev-libs/urdfdom )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/convex_decomposition
	ros-noetic/ivcon
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
