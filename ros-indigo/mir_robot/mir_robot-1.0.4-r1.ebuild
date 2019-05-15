# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="URDF description, Gazebo simulation, navigation, bringup launch files, mess[...]"
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/indigo/${PN}/1.0.4-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/mir_actions
	ros-indigo/mir_description
	ros-indigo/mir_driver
	ros-indigo/mir_dwb_critics
	ros-indigo/mir_gazebo
	ros-indigo/mir_msgs
	ros-indigo/mir_navigation
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
