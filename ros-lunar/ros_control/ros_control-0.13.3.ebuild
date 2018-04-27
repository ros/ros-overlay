# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A set of packages that include controller interfaces, controller managers, [...]"
HOMEPAGE="http://ros.org/wiki/ros_control"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/0.13.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/combined_robot_hw
	ros-lunar/combined_robot_hw_tests
	ros-lunar/controller_interface
	ros-lunar/controller_manager
	ros-lunar/controller_manager_msgs
	ros-lunar/controller_manager_tests
	ros-lunar/hardware_interface
	ros-lunar/joint_limits_interface
	ros-lunar/realtime_tools
	ros-lunar/transmission_interface
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
