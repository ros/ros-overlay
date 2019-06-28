# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Position feedback controller for simple linear motion of the fetch robot\'s[...]"
HOMEPAGE="http://ros.org/wiki/fetch_simple_linear_controller"
SRC_URI="https://github.com/gt-rail-release/${PN}-release/archive/release/melodic/${PN}/0.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/control_msgs
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
