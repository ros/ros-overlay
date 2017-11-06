# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A hub acts as a shared keyvalue store for multiple ros	 systems primarily "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/indigo/rocon_gateway/0.7.10-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gateway_msgs
	ros-indigo/rocon_console
	ros-indigo/rocon_gateway_utils
	ros-indigo/rocon_hub_client
	ros-indigo/rocon_python_comms
	ros-indigo/rocon_python_redis
	ros-indigo/rocon_python_utils
	ros-indigo/rocon_python_wifi
	ros-indigo/rosgraph
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/rosservice
	ros-indigo/rostopic
	ros-indigo/std_srvs
	ros-indigo/zeroconf_avahi
	ros-indigo/zeroconf_msgs
	dev-python/pycrypto
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

