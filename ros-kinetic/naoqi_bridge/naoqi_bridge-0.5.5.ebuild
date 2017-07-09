# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Meta package to interface ROS with Aldebarans NAOqi"
HOMEPAGE="http://ros.org/wiki/nao"
SRC_URI="https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/naoqi_bridge/0.5.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/naoqi_apps
	ros-kinetic/naoqi_bridge_msgs
	ros-kinetic/naoqi_driver
	ros-kinetic/naoqi_driver_py
	ros-kinetic/naoqi_pose
	ros-kinetic/naoqi_sensors_py
	ros-kinetic/naoqi_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

