# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="rqt_robot_dashboard provides an infrastructure for building robot dashboard plug"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_robot_dashboard-release/archive/release/lunar/rqt_robot_dashboard/0.5.7-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/diagnostic_msgs
	ros-lunar/python_qt_binding
	ros-lunar/qt_gui
	ros-lunar/rospy
	ros-lunar/rqt_console
	ros-lunar/rqt_gui
	ros-lunar/rqt_gui_py
	ros-lunar/rqt_nav_view
	ros-lunar/rqt_robot_monitor
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

