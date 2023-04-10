# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="RViz visualizations for polygons"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/MetroRobots-release/polygon_ros-release/archive/release/humble/${PN}/1.0.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/color_util
	ros-humble/geometry_msgs
	ros-humble/pluginlib
	ros-humble/polygon_msgs
	ros-humble/polygon_utils
	ros-humble/rviz_common
	ros-humble/std_msgs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
