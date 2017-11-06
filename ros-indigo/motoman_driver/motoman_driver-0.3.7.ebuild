# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The motoman driver package includes nodes for interfacing with a motoman\
 [...]"
HOMEPAGE="http://ros.org/wiki/motoman_driver"
SRC_URI="https://github.com/ros-industrial-release/motoman-release/archive/release/indigo/motoman_driver/0.3.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/control_msgs
	ros-indigo/industrial_msgs
	ros-indigo/industrial_robot_client
	ros-indigo/industrial_utils
	ros-indigo/motoman_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/simple_message
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/trajectory_msgs
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
