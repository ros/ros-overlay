# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Graphical interface, written in PySide, to manage the running and \
	 co[...]"
HOMEPAGE="http://ros.org/wiki/node_manager_fkie"
SRC_URI="https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/${PN}/0.8.12-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/default_cfg_fkie
	ros-kinetic/diagnostic_msgs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/master_discovery_fkie
	ros-kinetic/master_sync_fkie
	ros-kinetic/multimaster_msgs_fkie
	ros-kinetic/python_qt_binding
	ros-kinetic/rosgraph
	ros-kinetic/roslaunch
	ros-kinetic/roslib
	ros-kinetic/rosmsg
	ros-kinetic/rospy
	ros-kinetic/rosservice
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_reconfigure
	dev-python/docutils
	dev-python/paramiko
	app-misc/screen
	x11-terms/xterm
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
