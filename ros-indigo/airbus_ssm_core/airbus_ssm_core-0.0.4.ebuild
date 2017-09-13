# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The airbus_ssm_core package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/airbus_coop-release/archive/release/indigo/airbus_ssm_core/0.0.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/message_runtime
	ros-indigo/rospy
	ros-indigo/smach
	ros-indigo/smach_ros
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/actionlib_msgs
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
