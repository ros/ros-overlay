# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="abrul#text"
HOMEPAGE="http://wiki.ros.org/dynpick_driver"
SRC_URI="https://github.com/tork-a/dynpick_driver-release/archive/release/indigo/dynpick_driver/0.1.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/robot_state_publisher
	ros-indigo/roscpp
	ros-indigo/rviz
	ros-indigo/std_srvs
	ros-indigo/tf
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
