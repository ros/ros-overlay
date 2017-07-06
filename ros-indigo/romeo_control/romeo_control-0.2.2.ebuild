# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Control for Aldebaran'"'"'s ROMEO robot'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-aldebaran/romeo_virtual-release/archive/release/indigo/romeo_control/0.2.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/robot_state_publisher
	ros-indigo/ros_control
	ros-indigo/ros_controllers
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

