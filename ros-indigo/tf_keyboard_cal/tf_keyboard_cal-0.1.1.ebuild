# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Allows manual control of a TF through the keyboard"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/tf_keyboard_cal-release/archive/release/indigo/tf_keyboard_cal/0.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/keyboard
	ros-indigo/roscpp
	ros-indigo/rosparam_shortcuts
	ros-indigo/tf
	ros-indigo/tf2
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/roslib
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

