# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package is composed of \'dynamixel_item\', \'dynamixel_tool\', \'dynam[...]"
HOMEPAGE="http://wiki.ros.org/dynamixel_workbench_toolbox"
SRC_URI="https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/melodic/${PN}/2.0.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamixel_sdk
	ros-melodic/roscpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
