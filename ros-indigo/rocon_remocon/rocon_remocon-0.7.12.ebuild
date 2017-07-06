# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A qt based remocon for interacting with ros systems.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_qt_gui-release/archive/release/indigo/rocon_remocon/0.7.12-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/python_qt_binding
	ros-indigo/qt_gui_py_common
	ros-indigo/rocon_app_manager_msgs
	ros-indigo/rocon_console
	ros-indigo/rocon_icons
	ros-indigo/rocon_interaction_msgs
	ros-indigo/rocon_interactions
	ros-indigo/rocon_launch
	ros-indigo/rocon_python_comms
	ros-indigo/rocon_python_utils
	ros-indigo/rocon_qt_library
	ros-indigo/rocon_std_msgs
	ros-indigo/rocon_uri
	ros-indigo/roslaunch
	ros-indigo/rospy
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

