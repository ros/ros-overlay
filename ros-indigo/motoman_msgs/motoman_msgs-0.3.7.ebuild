# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="set of messages to serve as support for the multigroups driver"
HOMEPAGE="http://ros.org/wiki/motoman_msgs"
SRC_URI="https://github.com/ros-industrial-release/motoman-release/archive/release/indigo/motoman_msgs/0.3.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/genmsg
	ros-indigo/industrial_msgs
	ros-indigo/message_runtime
	ros-indigo/std_msgs
	ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

