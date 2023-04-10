# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Demo of polygon_rviz_plugins"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/MetroRobots-release/polygon_ros-release/archive/release/humble/${PN}/1.0.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/angles
	ros-humble/color_util
	ros-humble/geometry_msgs
	ros-humble/polygon_msgs
	ros-humble/polygon_rviz_plugins
	ros-humble/polygon_utils
	ros-humble/rclcpp
	ros-humble/rviz2
	ros-humble/rviz_common
	ros-humble/rviz_default_plugins
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
