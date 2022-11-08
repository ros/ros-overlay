# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The bag2_to_image package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.1.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rosbag2_cpp
	ros-humble/rosbag2_storage
	ros-humble/sensor_msgs
	test? ( ros-humble/ament_cmake_clang_format )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
