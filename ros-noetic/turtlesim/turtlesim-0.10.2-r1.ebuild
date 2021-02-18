# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="turtlesim is a tool made for teaching ROS and ROS packages."
HOMEPAGE="http://www.ros.org/wiki/turtlesim"
SRC_URI="https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/${PN}/0.10.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/roscpp_serialization
	ros-noetic/roslib
	ros-noetic/rostime
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	dev-libs/boost[threads]
	dev-qt/qtcore:5
	dev-qt/qtgui:5
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	dev-qt/qtcore:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
