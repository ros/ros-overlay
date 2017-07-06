# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A hub acts as a shared key-value store for multiple ros 
	systems (primarily '"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_gateway/0.8.1-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gateway_msgs
	ros-kinetic/rocon_console
	ros-kinetic/rocon_gateway_utils
	ros-kinetic/rocon_hub_client
	ros-kinetic/rocon_python_comms
	ros-kinetic/rocon_python_redis
	ros-kinetic/rocon_python_utils
	ros-kinetic/rocon_python_wifi
	ros-kinetic/rosgraph
	ros-kinetic/roslib
	ros-kinetic/rosparam
	ros-kinetic/rospy
	ros-kinetic/rosservice
	ros-kinetic/rostopic
	ros-kinetic/std_srvs
	ros-kinetic/zeroconf_avahi
	ros-kinetic/zeroconf_msgs
	dev-python/pycrypto
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

