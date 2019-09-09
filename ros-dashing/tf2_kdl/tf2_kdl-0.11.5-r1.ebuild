# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="KDL binding for tf2"
HOMEPAGE="http://ros.org/wiki/tf2"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/${PN}/0.11.5-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/builtin_interfaces
	ros-dashing/geometry_msgs
	ros-dashing/orocos_kdl
	ros-dashing/tf2
	ros-dashing/tf2_ros
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/rclcpp )
	test? ( ros-dashing/tf2_msgs )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
