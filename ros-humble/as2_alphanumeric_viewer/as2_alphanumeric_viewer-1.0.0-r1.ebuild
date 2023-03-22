# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="TODO: Package description"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/${PN}/1.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BDS-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_cmake
	ros-humble/as2_core
	ros-humble/as2_msgs
	ros-humble/geometry_msgs
	ros-humble/rclcpp
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/std_srvs
	test? ( ros-humble/ament_cmake_clang_format )
	test? ( ros-humble/ament_cmake_cppcheck )
	test? ( ros-humble/ament_cmake_cpplint )
	test? ( ros-humble/ament_lint_auto )
	dev-cpp/eigen
	sys-libs/ncurses
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
