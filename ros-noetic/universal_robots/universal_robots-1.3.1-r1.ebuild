# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS-Industrial support for Universal Robots manipulators \(metapackage\)."
HOMEPAGE="http://wiki.ros.org/universal_robots"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/${PN}/1.3.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ur10_moveit_config
	ros-noetic/ur10e_moveit_config
	ros-noetic/ur16e_moveit_config
	ros-noetic/ur3_moveit_config
	ros-noetic/ur3e_moveit_config
	ros-noetic/ur5_moveit_config
	ros-noetic/ur5e_moveit_config
	ros-noetic/ur_description
	ros-noetic/ur_gazebo
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
