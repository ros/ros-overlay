# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides a set of tools/actions for manipulating the pr2\'s tilting\
	la[...]"
HOMEPAGE="http://ros.org/wiki/pr2_tilt_laser"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/lunar/${PN}/0.0.11-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/actionlib_msgs
	ros-lunar/laser_geometry
	ros-lunar/message_runtime
	ros-lunar/pcl_conversions
	ros-lunar/pcl_ros
	ros-lunar/pr2_msgs
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
