# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Demos for fetch_gazebo package."
HOMEPAGE="http://ros.org/wiki/fetch_gazebo_demo"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/${PN}/0.9.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/fetch_gazebo
	ros-melodic/fetch_moveit_config
	ros-melodic/fetch_navigation
	ros-melodic/moveit_commander
	ros-melodic/moveit_python
	ros-melodic/simple_grasping
	ros-melodic/teleop_twist_keyboard
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
