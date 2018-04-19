# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains the description \(mechanical, kinematic, visual,\
  e[...]"
HOMEPAGE="http://ros.org/wiki/pr2_description"
SRC_URI="https://github.com/pr2-gbp/pr2_common-release/archive/release/lunar/${PN}/1.12.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/xacro
	test? ( dev-cpp/gtest )
	test? ( dev-libs/urdfdom )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/convex_decomposition
	ros-lunar/ivcon
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
