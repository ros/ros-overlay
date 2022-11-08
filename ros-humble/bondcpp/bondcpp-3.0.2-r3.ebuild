# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="C++ implementation of bond, a mechanism for checking when\
	another proc[...]"
HOMEPAGE="http://www.ros.org/wiki/bondcpp"
SRC_URI="https://github.com/ros2-gbp/bond_core-release/archive/release/humble/${PN}/3.0.2-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/bond
	ros-humble/rclcpp
	ros-humble/rclcpp_lifecycle
	ros-humble/smclib
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	dev-libs/ossp-uuid
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
