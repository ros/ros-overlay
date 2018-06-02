# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS-enabled OpenManipulator is a full open robot platform consisting of Ope[...]"
HOMEPAGE="http://wiki.ros.org/open_manipulator"
SRC_URI="https://github.com/ROBOTIS-GIT-release/${PN}-release/archive/release/kinetic/${PN}/1.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/open_manipulator_description
	ros-kinetic/open_manipulator_dynamixel_ctrl
	ros-kinetic/open_manipulator_moveit
	ros-kinetic/open_manipulator_position_ctrl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
