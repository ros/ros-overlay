# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'ROS nodelet for fake Kobuki.'"
HOMEPAGE="http://ros.org/wiki/kobuki"
SRC_URI="https://github.com/yujinrobot-release/kobuki_soft-release/archive/release/indigo/kobuki_softnode/0.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_aggregator
	ros-indigo/geometry_msgs
	ros-indigo/kobuki_description
	ros-indigo/kobuki_msgs
	ros-indigo/nav_msgs
	ros-indigo/nodelet
	ros-indigo/robot_state_publisher
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/yujin_maps
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

