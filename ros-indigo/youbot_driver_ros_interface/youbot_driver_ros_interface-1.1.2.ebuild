# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS wrapper for the youBot driver"
HOMEPAGE="http://www.youbot-store.com"
SRC_URI="https://github.com/youbot-release/youbot_driver_ros_interface-release/archive/release/indigo/youbot_driver_ros_interface/1.1.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( LGPL-2 CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/brics_actuator
	ros-indigo/control_msgs
	ros-indigo/diagnostic_msgs
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/pr2_msgs
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	ros-indigo/trajectory_msgs
	ros-indigo/youbot_driver
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
