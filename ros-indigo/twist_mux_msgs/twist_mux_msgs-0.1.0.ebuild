# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The twist_mux msgs and actions package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/twist_mux_msgs-release/archive/release/indigo/twist_mux_msgs/0.1.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="CC-BY-NC-SA-4.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/message_runtime
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
