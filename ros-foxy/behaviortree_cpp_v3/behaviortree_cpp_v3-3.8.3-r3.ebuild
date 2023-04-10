# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="This package provides the Behavior Trees core library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/BehaviorTree/${PN}-release/archive/release/foxy/${PN}/3.8.3-3.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_cpp
	ros-foxy/rclcpp
	test? ( ros-foxy/ament_cmake_gtest )
	dev-libs/boost[python]
	sys-libs/ncurses
	net-libs/cppzmq
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ros_environment
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
