# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="pr2_props is a package designed to be the first step towards replacing your[...]"
HOMEPAGE="http://ros.org/wiki/pr2_props"
SRC_URI="https://github.com/pr2-gbp/pr2_props_stack-release/archive/release/indigo/pr2_props/1.0.4-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/pr2_gripper_sensor_action
	ros-indigo/pr2_gripper_sensor_controller
	ros-indigo/pr2_gripper_sensor_msgs
	ros-indigo/roscpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
