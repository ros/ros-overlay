# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="RTAB-Map\'s odometry package."
HOMEPAGE="https://github.com/introlab/rtabmap_ros/issues"
SRC_URI="https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/${PN}/0.21.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/image_geometry
	ros-noetic/laser_geometry
	ros-noetic/message_filters
	ros-noetic/nav_msgs
	ros-noetic/nodelet
	ros-noetic/pcl_conversions
	ros-noetic/pcl_ros
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/rtabmap_conversions
	ros-noetic/rtabmap_msgs
	ros-noetic/rtabmap_sync
	ros-noetic/rtabmap_util
	ros-noetic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
