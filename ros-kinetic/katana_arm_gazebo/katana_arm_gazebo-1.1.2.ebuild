# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a#text"
HOMEPAGE="http://ros.org/wiki/katana_arm_gazebo"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_arm_gazebo/1.1.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/controller_manager
	ros-kinetic/controller_manager_msgs
	ros-kinetic/gazebo_ros
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/katana_description
	ros-kinetic/katana_gazebo_plugins
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/urdf
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

