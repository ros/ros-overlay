# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Graphical interface, written in PySide, to manage the running and \
	 co[...]"
HOMEPAGE="http://ros.org/wiki/node_manager_fkie"
SRC_URI="https://github.com/fkie-release/multimaster_fkie-release/archive/release/indigo/${PN}/0.8.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/default_cfg_fkie
	ros-indigo/diagnostic_msgs
	ros-indigo/dynamic_reconfigure
	ros-indigo/master_discovery_fkie
	ros-indigo/master_sync_fkie
	ros-indigo/multimaster_msgs_fkie
	ros-indigo/python_qt_binding
	ros-indigo/rosgraph
	ros-indigo/roslaunch
	ros-indigo/roslib
	ros-indigo/rosmsg
	ros-indigo/rospy
	ros-indigo/rosservice
	ros-indigo/rqt_gui
	ros-indigo/rqt_reconfigure
	dev-python/docutils
	dev-python/paramiko
	app-misc/screen
	x11-terms/xterm
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
