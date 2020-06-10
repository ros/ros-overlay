# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Tools for directing, throttling, selecting, and otherwise messing with\
   [...]"
HOMEPAGE="http://ros.org/wiki/topic_tools"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/${PN}/1.14.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/rostime
	ros-melodic/std_msgs
	ros-melodic/xmlrpcpp
	test? ( ros-melodic/rosbash )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cpp_common
	ros-melodic/message_generation
	ros-melodic/rostest
	ros-melodic/rosunit
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
