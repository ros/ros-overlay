# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This unary stack contains the dynamic_reconfigure package which provides a [...]"
HOMEPAGE="http://ros.org/wiki/dynamic_reconfigure"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.6.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/rosservice
	ros-melodic/std_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cpp_common
	ros-melodic/message_generation
	ros-melodic/roscpp_serialization
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
