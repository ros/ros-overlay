# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="turtlesim is a tool made for teaching ROS and ROS packages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_tutorials-release/archive/release/lunar/turtlesim/0.8.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/roscpp_serialization
	ros-lunar/roslib
	ros-lunar/rostime
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	dev-qt/qtcore:5
	dev-qt/qtgui:5
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
	dev-qt/qtcore:5
	dev-qt/qtcore:5
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

