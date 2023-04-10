# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides the Behavior Trees core library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/BehaviorTree/${PN}-release/archive/release/noetic/${PN}/3.8.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/roslib
	dev-libs/boost[python]
	sys-libs/ncurses
	net-libs/cppzmq
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/ros_environment
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
