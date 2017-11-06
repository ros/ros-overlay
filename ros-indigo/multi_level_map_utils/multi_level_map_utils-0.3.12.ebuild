# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Contains utilities like a level multiplexer, a level selector and other utility "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/bwi_common-release/archive/release/indigo/multi_level_map_utils/0.3.12-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/bwi_tools
	ros-indigo/geometry_msgs
	ros-indigo/multi_level_map_msgs
	ros-indigo/nav_msgs
	ros-indigo/python_qt_binding
	ros-indigo/qt_gui
	ros-indigo/rospy
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

