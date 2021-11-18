# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Persistent storage of ROS messages"
HOMEPAGE="http://ros.org/wiki/warehouse_ros"
SRC_URI="https://github.com/moveit/${PN}-release/archive/release/galactic/${PN}/2.0.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/geometry_msgs
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/std_msgs
	ros-galactic/tf2
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	test? ( ros-galactic/ament_cmake_copyright )
	test? ( ros-galactic/ament_lint_auto )
	dev-libs/boost[python]
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
