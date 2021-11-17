# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/noetic/${PN}/2.3.1-1 -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/joint_state_publisher
	ros-noetic/robot_state_publisher
	ros-noetic/rqt_gui
	ros-noetic/rqt_reconfigure
	ros-noetic/rviz
	ros-noetic/socketcan_bridge
	ros-noetic/toposens_description
	ros-noetic/toposens_driver
	ros-noetic/toposens_echo_driver
	ros-noetic/toposens_markers
	ros-noetic/toposens_pointcloud
	ros-noetic/turtlebot3_bringup
	ros-noetic/turtlebot3_teleop
	ros-noetic/xacro
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
