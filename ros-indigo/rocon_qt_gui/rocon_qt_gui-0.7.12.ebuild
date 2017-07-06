# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Qt gui applications for interacting with the rocon framework.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_qt_gui-release/archive/release/indigo/rocon_qt_gui/0.7.12-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/concert_admin_app
	ros-indigo/concert_conductor_graph
	ros-indigo/concert_qt_make_a_map
	ros-indigo/concert_qt_map_annotation
	ros-indigo/concert_qt_service_info
	ros-indigo/concert_qt_teleop
	ros-indigo/rocon_gateway_graph
	ros-indigo/rocon_qt_app_manager
	ros-indigo/rocon_qt_library
	ros-indigo/rocon_qt_listener
	ros-indigo/rocon_qt_master_info
	ros-indigo/rocon_qt_teleop
	ros-indigo/rocon_remocon
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

