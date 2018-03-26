# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A set of packages that include controller interfaces, controller managers, [...]"
HOMEPAGE="http://ros.org/wiki/ros_control"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.14.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/combined_robot_hw
	ros-melodic/combined_robot_hw_tests
	ros-melodic/controller_interface
	ros-melodic/controller_manager
	ros-melodic/controller_manager_msgs
	ros-melodic/controller_manager_tests
	ros-melodic/hardware_interface
	ros-melodic/joint_limits_interface
	ros-melodic/realtime_tools
	ros-melodic/transmission_interface
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
