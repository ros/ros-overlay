# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="RealSense Camera description package for Intel 3D D400 cameras"
HOMEPAGE="https://wiki.ros.org/realsense2_camera"
SRC_URI="https://github.com/IntelRealSense/realsense-ros-release/archive/release/galactic/${PN}/3.2.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/launch_ros
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/realsense2_camera_msgs
	ros-galactic/xacro
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
