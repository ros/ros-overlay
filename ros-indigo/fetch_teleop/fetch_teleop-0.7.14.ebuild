# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Teleoperation for fetch and freight."
HOMEPAGE="http://ros.org/wiki/fetch_teleop"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/indigo/${PN}/0.7.14-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/control_msgs
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
