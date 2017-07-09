# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The concert framework modules.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_concert-release/archive/release/indigo/rocon_concert/0.6.11-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/concert_conductor
	ros-indigo/concert_master
	ros-indigo/concert_schedulers
	ros-indigo/concert_service_link_graph
	ros-indigo/concert_service_manager
	ros-indigo/concert_service_utilities
	ros-indigo/concert_software_farmer
	ros-indigo/concert_utilities
	ros-indigo/rocon_tf_reconstructor
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

