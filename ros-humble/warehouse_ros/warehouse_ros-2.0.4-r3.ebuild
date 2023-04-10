# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Persistent storage of ROS messages"
HOMEPAGE="http://ros.org/wiki/warehouse_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.0.4-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/std_msgs
	ros-humble/tf2
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	test? ( ros-humble/ament_cmake_copyright )
	test? ( ros-humble/ament_lint_auto )
	dev-libs/boost[python]
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
