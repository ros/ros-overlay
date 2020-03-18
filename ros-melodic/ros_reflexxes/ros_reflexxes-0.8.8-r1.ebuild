# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ros_reflexxes package"
HOMEPAGE="https://gitlab.ira.uka.de/iirob/ros_reflexxes"
SRC_URI="https://github.com/KITrobotics/ipr_extern-release/archive/release/melodic/${PN}/0.8.8-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/libreflexxestype2
	ros-melodic/roscpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
