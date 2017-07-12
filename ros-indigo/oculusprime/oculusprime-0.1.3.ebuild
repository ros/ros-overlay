# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Oculus Prime ROS Interface"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xaxxontech/oculusprime_ros-release/archive/release/indigo/oculusprime/0.1.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/amcl
	ros-indigo/depthimage_to_laserscan
	ros-indigo/dwa_local_planner
	ros-indigo/dynamic_reconfigure
	ros-indigo/gmapping
	ros-indigo/map_server
	ros-indigo/move_base
	ros-indigo/nodelet
	ros-indigo/openni2_camera
	ros-indigo/openni2_launch
	ros-indigo/pcl_ros
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

