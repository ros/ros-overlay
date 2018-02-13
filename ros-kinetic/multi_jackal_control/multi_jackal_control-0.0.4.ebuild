# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Creates the joint and velocity controllers."
HOMEPAGE="http://ros.org/wiki/multi_jackal_control"
SRC_URI="https://github.com/NicksSimulationsROS/multi_jackal-release/archive/release/kinetic/${PN}/0.0.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/diff_drive_controller
	ros-kinetic/gazebo_ros_control
	ros-kinetic/hector_gazebo_plugins
	ros-kinetic/interactive_marker_twist_server
	ros-kinetic/joint_state_controller
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/urdf
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
