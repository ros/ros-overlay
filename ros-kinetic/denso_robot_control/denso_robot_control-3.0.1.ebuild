# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="DENSO robot control package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/${PN}/3.0.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/bcap_core
	ros-kinetic/bcap_service
	ros-kinetic/controller_manager
	ros-kinetic/denso_robot_core
	ros-kinetic/hardware_interface
	ros-kinetic/joint_limits_interface
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/transmission_interface
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
