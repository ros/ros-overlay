# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The public fetch_drivers package is a binary only release.\
\
	fetch_dri[...]"
HOMEPAGE="https://wiki.ros.org/fetch_drivers"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/noetic/${PN}/0.9.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Proprietary"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/diagnostic_msgs
	ros-noetic/fetch_auto_dock_msgs
	ros-noetic/fetch_driver_msgs
	ros-noetic/nav_msgs
	ros-noetic/power_msgs
	ros-noetic/robot_calibration_msgs
	ros-noetic/robot_controllers
	ros-noetic/robot_controllers_interface
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/roscpp_serialization
	ros-noetic/rostime
	ros-noetic/sensor_msgs
	ros-noetic/urdf
	dev-libs/boost[python]
	net-misc/curl
	dev-libs/urdfdom
	dev-lang/python
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/mk
	ros-noetic/rospack
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
