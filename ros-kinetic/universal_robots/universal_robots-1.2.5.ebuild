# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS-Industrial support for Universal Robots manipulators \(metapackage\)."
HOMEPAGE="http://wiki.ros.org/universal_robots"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/${PN}/1.2.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ur10_e_moveit_config
	ros-kinetic/ur10_moveit_config
	ros-kinetic/ur3_e_moveit_config
	ros-kinetic/ur3_moveit_config
	ros-kinetic/ur5_e_moveit_config
	ros-kinetic/ur5_moveit_config
	ros-kinetic/ur_bringup
	ros-kinetic/ur_description
	ros-kinetic/ur_driver
	ros-kinetic/ur_e_description
	ros-kinetic/ur_e_gazebo
	ros-kinetic/ur_gazebo
	ros-kinetic/ur_kinematics
	ros-kinetic/ur_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
