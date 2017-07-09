# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Move the robot base until a desired endeffector pose can be reached"
HOMEPAGE="http://wiki.ros.org/move_base_to_manip"
SRC_URI="https://github.com/UTNuclearRoboticsPublic/move_base_to_manip-release/archive/release/kinetic/move_base_to_manip/1.0.18-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/interactive_markers
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/move_base_msgs
	ros-kinetic/moveit_core
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/roscpp
	ros-kinetic/tf
	ros-kinetic/tf2_geometry_msgs
	ros-kinetic/visualization_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

