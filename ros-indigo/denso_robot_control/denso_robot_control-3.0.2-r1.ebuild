# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The denso robot control package includes a node for controlling DENSO robot[...]"
HOMEPAGE="http://ros.org/wiki/denso_robot_control"
SRC_URI="https://github.com/DENSORobot/denso_robot_ros-release/archive/release/indigo/${PN}/3.0.2-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/bcap_core
	ros-indigo/bcap_service
	ros-indigo/controller_manager
	ros-indigo/denso_robot_core
	ros-indigo/hardware_interface
	ros-indigo/joint_limits_interface
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/transmission_interface
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
