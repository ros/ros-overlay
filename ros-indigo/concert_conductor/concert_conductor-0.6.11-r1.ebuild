# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Managing the concert clients - invitations, monitoring connections..."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_concert-release/archive/release/indigo/concert_conductor/0.6.11-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/concert_msgs
	ros-indigo/dynamic_reconfigure
	ros-indigo/gateway_msgs
	ros-indigo/rocon_app_manager_msgs
	ros-indigo/rocon_console
	ros-indigo/rocon_gateway_utils
	ros-indigo/rocon_python_comms
	ros-indigo/rocon_uri
	ros-indigo/rosgraph
	ros-indigo/rospy
	ros-indigo/rosservice
	ros-indigo/std_msgs
	ros-indigo/std_srvs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
