# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Common widgets and modules for rocon qt development"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_qt_gui-release/archive/release/indigo/rocon_qt_library/0.7.12-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ar_track_alvar_msgs
	ros-indigo/qt_gui_py_common
	ros-indigo/rocon_bubble_icons
	ros-indigo/rocon_console
	ros-indigo/rospy
	ros-indigo/rospy_message_converter
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
	ros-indigo/world_canvas_client_py
	ros-indigo/world_canvas_msgs
	ros-indigo/yocs_msgs
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

