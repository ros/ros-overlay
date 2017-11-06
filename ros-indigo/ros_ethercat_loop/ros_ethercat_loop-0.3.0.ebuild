# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Main loop to run EtherCAT robot hardware."
HOMEPAGE="http://www.shadowrobot.com/"
SRC_URI="https://github.com/shadow-robot/ros_ethercat-release/archive/release/indigo/ros_ethercat_loop/0.3.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/ethercat_grant
	ros-indigo/pluginlib
	ros-indigo/realtime_tools
	ros-indigo/ros_ethercat_hardware
	ros-indigo/ros_ethercat_model
	ros-indigo/roscpp
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
