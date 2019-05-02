# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Graphical interface, written in PySide, to manage the running and \
	 co[...]"
HOMEPAGE="http://ros.org/wiki/node_manager_fkie"
SRC_URI="https://github.com/fkie-release/multimaster_fkie-release/archive/release/melodic/${PN}/0.8.12-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/default_cfg_fkie
	ros-melodic/diagnostic_msgs
	ros-melodic/dynamic_reconfigure
	ros-melodic/master_discovery_fkie
	ros-melodic/master_sync_fkie
	ros-melodic/multimaster_msgs_fkie
	ros-melodic/python_qt_binding
	ros-melodic/rosgraph
	ros-melodic/roslaunch
	ros-melodic/roslib
	ros-melodic/rosmsg
	ros-melodic/rospy
	ros-melodic/rosservice
	ros-melodic/rqt_gui
	ros-melodic/rqt_reconfigure
	dev-python/docutils
	dev-python/paramiko
	app-misc/screen
	x11-terms/xterm
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
