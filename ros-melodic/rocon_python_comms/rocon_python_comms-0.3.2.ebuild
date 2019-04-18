# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Service pair libraries for pub/sub non-blocking services."
HOMEPAGE="http://ros.org/wiki/rocon_python_comms"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/${PN}/0.3.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/genpy
	ros-melodic/rocon_console
	ros-melodic/rocon_service_pair_msgs
	ros-melodic/rosgraph
	ros-melodic/roslib
	ros-melodic/rosnode
	ros-melodic/rospy
	ros-melodic/rosservice
	ros-melodic/rostopic
	ros-melodic/unique_id
	ros-melodic/uuid_msgs
	test? ( ros-melodic/rosunit )
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
