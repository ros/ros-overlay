# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This is the radar driver package developed for the omnipresense radar module."
HOMEPAGE="http://www.ros.org/wiki/radar_omnipresense"
SRC_URI="https://github.com/SCU-RSL-ROS/${PN}-release/archive/release/lunar/${PN}/0.3.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="ECL2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/message_generation
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rostest
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
