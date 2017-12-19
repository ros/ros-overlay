# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The denso robot core test package includes a node for testing denso robot c[...]"
HOMEPAGE="http://ros.org/wiki/denso_robot_core_test"
SRC_URI="https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/${PN}/3.0.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/bcap_core
	ros-kinetic/catkin
	ros-kinetic/denso_robot_core
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
