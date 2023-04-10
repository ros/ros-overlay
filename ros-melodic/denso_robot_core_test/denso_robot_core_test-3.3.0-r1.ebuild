# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The denso robot core test package includes a node for testing denso robot c[...]"
HOMEPAGE="http://ros.org/wiki/denso_robot_core_test"
SRC_URI="https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/${PN}/3.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/roscpp
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/bcap_core
	ros-melodic/catkin
	ros-melodic/denso_robot_core
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
