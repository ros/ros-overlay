# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The uuv_control_utils package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/${PN}/0.6.10-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/gazebo_msgs
	ros-lunar/geometry_msgs
	ros-lunar/nav_msgs
	ros-lunar/rospy
	ros-lunar/std_msgs
	ros-lunar/uuv_control_msgs
	ros-lunar/uuv_gazebo_ros_plugins_msgs
	ros-lunar/uuv_trajectory_control
	ros-lunar/uuv_world_ros_plugins_msgs
	ros-lunar/visualization_msgs
	dev-python/numpy
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
