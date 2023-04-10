# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Persistent storage of ROS messages"
HOMEPAGE="http://ros.org/wiki/warehouse_ros"
SRC_URI="https://github.com/moveit/${PN}-release/archive/release/foxy/${PN}/2.0.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/std_msgs
	ros-foxy/tf2
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	test? ( ros-foxy/ament_cmake_copyright )
	test? ( ros-foxy/ament_lint_auto )
	dev-libs/boost[python]
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
