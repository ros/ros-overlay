# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Oculus Prime ROS Interface'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xaxxontech/oculusprime_ros-release/archive/release/kinetic/oculusprime/0.1.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/amcl
	ros-kinetic/depthimage_to_laserscan
	ros-kinetic/dwa_local_planner
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/gmapping
	ros-kinetic/map_server
	ros-kinetic/move_base
	ros-kinetic/nodelet
	ros-kinetic/openni2_camera
	ros-kinetic/openni2_launch
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

