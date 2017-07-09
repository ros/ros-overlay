# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Service pair libraries for pub/sub nonblocking services"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_python_comms/0.3.2-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/genpy
	ros-kinetic/rocon_console
	ros-kinetic/rocon_service_pair_msgs
	ros-kinetic/rosgraph
	ros-kinetic/roslib
	ros-kinetic/rosnode
	ros-kinetic/rospy
	ros-kinetic/rosservice
	ros-kinetic/rostopic
	ros-kinetic/unique_id
	ros-kinetic/uuid_msgs
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

