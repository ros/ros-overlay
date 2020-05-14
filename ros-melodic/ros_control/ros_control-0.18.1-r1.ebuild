# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A set of packages that include controller interfaces, controller managers, [...]"
HOMEPAGE="http://ros.org/wiki/ros_control"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.18.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/combined_robot_hw
	ros-melodic/controller_interface
	ros-melodic/controller_manager
	ros-melodic/controller_manager_msgs
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
