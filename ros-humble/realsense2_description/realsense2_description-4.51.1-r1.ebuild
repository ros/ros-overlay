# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="RealSense description package for Intel 3D D400 cameras"
HOMEPAGE="http://www.ros.org/wiki/RealSense"
SRC_URI="https://github.com/IntelRealSense/realsense-ros-release/archive/release/humble/${PN}/4.51.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/launch_ros
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/realsense2_camera_msgs
	ros-humble/xacro
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
