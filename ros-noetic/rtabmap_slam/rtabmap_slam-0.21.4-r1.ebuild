# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="RTAB-Map\'s SLAM package."
HOMEPAGE="https://github.com/introlab/rtabmap_ros/issues"
SRC_URI="https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/${PN}/0.21.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/apriltag_ros
	ros-noetic/cv_bridge
	ros-noetic/geometry_msgs
	ros-noetic/move_base_msgs
	ros-noetic/nav_msgs
	ros-noetic/nodelet
	ros-noetic/pluginlib
	ros-noetic/rtabmap_msgs
	ros-noetic/rtabmap_sync
	ros-noetic/rtabmap_util
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf
	ros-noetic/tf2_ros
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
