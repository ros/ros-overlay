# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The adhoc_communication package allows to exchange data over an adhoc network s"
HOMEPAGE="http://wiki.ros.org/adhoc_communication"
SRC_URI="https://github.com/aau-ros/aau_multi_robot-release/archive/release/indigo/adhoc_communication/0.1.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecl_time
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

