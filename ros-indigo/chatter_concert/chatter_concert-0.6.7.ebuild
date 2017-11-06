# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A very simple software concert with talker/listener apps."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tutorials-release/archive/release/indigo/chatter_concert/0.6.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/concert_master
	ros-indigo/concert_service_admin
	ros-indigo/concert_service_link_graph
	ros-indigo/concert_service_utilities
	ros-indigo/rocon_app_manager
	ros-indigo/rocon_apps
	ros-indigo/rocon_bubble_icons
	ros-indigo/rocon_python_utils
	ros-indigo/rospy_tutorials
	ros-indigo/zeroconf_avahi
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
