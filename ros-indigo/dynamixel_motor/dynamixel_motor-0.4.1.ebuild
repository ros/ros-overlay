# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack contains packages that are used to interface with Robotis	Dynamix"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/arebgun/dynamixel_motor-release/archive/release/indigo/dynamixel_motor/0.4.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamixel_controllers
	ros-indigo/dynamixel_driver
	ros-indigo/dynamixel_msgs
	ros-indigo/dynamixel_tutorials
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

