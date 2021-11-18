# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="swri_roscpp"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/galactic/${PN}/3.3.2-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/diagnostic_updater
	ros-galactic/marti_common_msgs
	ros-galactic/nav_msgs
	ros-galactic/rclcpp
	ros-galactic/rosidl_default_runtime
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	test? ( ros-galactic/ament_cmake_gtest )
	dev-libs/boost[python]
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rosidl_cmake
	ros-galactic/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
