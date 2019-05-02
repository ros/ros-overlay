# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains the description \(mechanical, kinematic, visual,\
  e[...]"
HOMEPAGE="http://ros.org/wiki/pr2_description"
SRC_URI="https://github.com/pr2-gbp/pr2_common-release/archive/release/kinetic/${PN}/1.12.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/xacro
	test? ( ros-kinetic/rosbash )
	test? ( dev-cpp/gtest )
	test? ( dev-libs/urdfdom )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/convex_decomposition
	ros-kinetic/ivcon
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
