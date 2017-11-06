# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Service pair libraries for pub/sub nonblocking services"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/indigo/rocon_python_comms/0.1.23-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/genpy
	ros-indigo/rocon_console
	ros-indigo/rocon_service_pair_msgs
	ros-indigo/rosgraph
	ros-indigo/roslib
	ros-indigo/rosnode
	ros-indigo/rospy
	ros-indigo/rosservice
	ros-indigo/rostopic
	ros-indigo/unique_id
	ros-indigo/uuid_msgs
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

