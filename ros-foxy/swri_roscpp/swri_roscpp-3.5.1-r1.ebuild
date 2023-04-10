# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="swri_roscpp"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/marti_common-release/archive/release/foxy/${PN}/3.5.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/diagnostic_updater
	ros-foxy/marti_common_msgs
	ros-foxy/nav_msgs
	ros-foxy/rclcpp
	ros-foxy/rosidl_default_runtime
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	test? ( ros-foxy/ament_cmake_gtest )
	dev-libs/boost[python]
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_cmake
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
