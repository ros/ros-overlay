# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Demos for fetch_gazebo package."
HOMEPAGE="http://ros.org/wiki/fetch_gazebo_demo"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/kinetic/${PN}/0.8.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/fetch_gazebo
	ros-kinetic/fetch_moveit_config
	ros-kinetic/fetch_navigation
	ros-kinetic/moveit_python
	ros-kinetic/simple_grasping
	ros-kinetic/teleop_twist_keyboard
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
