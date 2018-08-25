# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Tools for directing, throttling, selecting, and otherwise messing with\
   [...]"
HOMEPAGE="http://ros.org/wiki/topic_tools"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/${PN}/1.12.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_runtime
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/rostime
	ros-kinetic/std_msgs
	ros-kinetic/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cpp_common
	ros-kinetic/message_generation
	ros-kinetic/rostest
	ros-kinetic/rosunit
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
