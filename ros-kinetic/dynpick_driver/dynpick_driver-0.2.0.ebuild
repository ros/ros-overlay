# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="abrul#text"
HOMEPAGE="http://wiki.ros.org/dynpick_driver"
SRC_URI="https://github.com/tork-a/dynpick_driver-release/archive/release/kinetic/dynpick_driver/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/rviz
	ros-kinetic/std_srvs
	ros-kinetic/tf
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
