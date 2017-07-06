# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This package provides starting scripts for Spur robot'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/spur-release/archive/release/indigo/spur_bringup/0.2.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamixel_controllers
	ros-indigo/joy
	ros-indigo/laser_filters
	ros-indigo/spur_controller
	ros-indigo/teleop_twist_joy
	ros-indigo/teleop_twist_keyboard
	ros-indigo/urg_node
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

