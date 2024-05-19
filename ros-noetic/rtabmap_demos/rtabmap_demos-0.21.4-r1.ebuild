# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="RTAB-Map\'s demo launch files."
HOMEPAGE="https://github.com/introlab/rtabmap_ros/issues"
SRC_URI="https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/${PN}/0.21.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/find_object_2d
	ros-noetic/hector_mapping
	ros-noetic/husky_navigation
	ros-noetic/rtabmap_conversions
	ros-noetic/rtabmap_costmap_plugins
	ros-noetic/rtabmap_launch
	ros-noetic/rtabmap_msgs
	ros-noetic/rtabmap_odom
	ros-noetic/rtabmap_rviz_plugins
	ros-noetic/rtabmap_slam
	ros-noetic/rtabmap_sync
	ros-noetic/rtabmap_util
	ros-noetic/rtabmap_viz
	ros-noetic/turtlebot3_bringup
	ros-noetic/turtlebot3_gazebo
	ros-noetic/turtlebot3_navigation
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
