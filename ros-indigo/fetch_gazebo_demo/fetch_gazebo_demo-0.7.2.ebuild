# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Demos for fetch_gazebo package."
HOMEPAGE="http://ros.org/wiki/fetch_gazebo_demo"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/indigo/${PN}/0.7.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/fetch_gazebo
	ros-indigo/fetch_moveit_config
	ros-indigo/fetch_navigation
	ros-indigo/moveit_python
	ros-indigo/simple_grasping
	ros-indigo/teleop_twist_keyboard
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
