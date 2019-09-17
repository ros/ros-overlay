# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The jog_controller package"
HOMEPAGE="http://wiki.ros.org/jog_controller"
SRC_URI="https://github.com/tork-a/jog_control-release/archive/release/kinetic/${PN}/0.0.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/control_msgs
	ros-kinetic/jog_msgs
	ros-kinetic/joy
	ros-kinetic/moveit_core
	ros-kinetic/moveit_msgs
	ros-kinetic/moveit_ros_planning
	ros-kinetic/moveit_visual_tools
	ros-kinetic/roscpp
	ros-kinetic/rviz
	ros-kinetic/spacenav_node
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
