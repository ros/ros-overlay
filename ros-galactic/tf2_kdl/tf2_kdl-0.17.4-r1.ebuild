# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="KDL binding for tf2"
HOMEPAGE="http://ros.org/wiki/tf2"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/galactic/${PN}/0.17.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/geometry_msgs
	ros-galactic/orocos_kdl
	ros-galactic/tf2
	ros-galactic/tf2_ros
	ros-galactic/tf2_ros_py
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/rclcpp )
	test? ( ros-galactic/tf2_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
