# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Server Side tools for Authorization and Authentication of ROS Clients"
HOMEPAGE="http://ros.org/wiki/rosauth"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/2.0.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/rclcpp
	ros-dashing/rosidl_default_runtime
	test? ( ros-dashing/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_ros
	ros-dashing/rosidl_default_generators
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
