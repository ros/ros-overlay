# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="turtle_actionlib demonstrates how to write an action server and client with[...]"
HOMEPAGE="http://ros.org/wiki/turtle_actionlib"
SRC_URI="https://github.com/ros-gbp/common_tutorials-release/archive/release/melodic/${PN}/0.1.11-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/angles
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/turtlesim
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
