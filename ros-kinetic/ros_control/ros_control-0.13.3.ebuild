# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A set of packages that include controller interfaces, controller managers, [...]"
HOMEPAGE="http://ros.org/wiki/ros_control"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.13.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/combined_robot_hw
	ros-kinetic/combined_robot_hw_tests
	ros-kinetic/controller_interface
	ros-kinetic/controller_manager
	ros-kinetic/controller_manager_msgs
	ros-kinetic/controller_manager_tests
	ros-kinetic/hardware_interface
	ros-kinetic/joint_limits_interface
	ros-kinetic/realtime_tools
	ros-kinetic/transmission_interface
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
