# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'General concert functionality.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_concert-release/archive/release/indigo/concert_master/0.6.11-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/concert_conductor
	ros-indigo/concert_msgs
	ros-indigo/concert_schedulers
	ros-indigo/concert_service_manager
	ros-indigo/concert_software_farmer
	ros-indigo/rocon_console
	ros-indigo/rocon_gateway
	ros-indigo/rocon_hub
	ros-indigo/rocon_icons
	ros-indigo/rocon_interactions
	ros-indigo/rocon_master_info
	ros-indigo/rocon_python_comms
	ros-indigo/rocon_python_utils
	ros-indigo/rocon_std_msgs
	ros-indigo/rosbridge_server
	ros-indigo/rospy
	ros-indigo/zeroconf_avahi
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

