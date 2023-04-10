# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="This package provides the Behavior Trees core library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/BehaviorTree/${PN}-release/archive/release/humble/${PN}/3.8.3-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_cpp
	ros-humble/rclcpp
	test? ( ros-humble/ament_cmake_gtest )
	dev-libs/boost[python]
	sys-libs/ncurses
	net-libs/cppzmq
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ros_environment
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
