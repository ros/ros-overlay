# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'SVH Driver wrapper to enable control of the Schunk five finger hand'"
HOMEPAGE="http://www.ros.org/wiki/schunk_svh_driver"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/schunk_svh_driver-release/archive/release/indigo/schunk_svh_driver/0.2.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/fzi_icl_comm
	ros-indigo/fzi_icl_core
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/urdf
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

