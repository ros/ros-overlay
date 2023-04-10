# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="<p>\
	  amcl is a probabilistic localization system for a robot moving i[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/humble/${PN}/1.1.6-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="LGPL-2.1-or-later"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/launch_ros
	ros-humble/launch_testing
	ros-humble/message_filters
	ros-humble/nav2_msgs
	ros-humble/nav2_util
	ros-humble/nav_msgs
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/sensor_msgs
	ros-humble/std_srvs
	ros-humble/tf2
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/nav2_common
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
