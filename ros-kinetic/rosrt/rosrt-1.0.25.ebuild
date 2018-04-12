# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rosrt provides classes for interfacing with ROS from within realtime system[...]"
HOMEPAGE="http://ros.org/wiki/rosrt"
SRC_URI="https://github.com/ros-gbp/ros_realtime-release/archive/release/kinetic/${PN}/1.0.25-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/allocators
	ros-kinetic/lockfree
	ros-kinetic/rosatomic
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/rosunit
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
