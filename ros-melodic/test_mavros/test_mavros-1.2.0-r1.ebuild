# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Tests for MAVROS package"
HOMEPAGE="https://github.com/mavlink/mavros.git"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/melodic/${PN}/1.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD GPL-3 LGPL-2 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/control_toolbox
	ros-melodic/eigen_conversions
	ros-melodic/geometry_msgs
	ros-melodic/mavros
	ros-melodic/mavros_extras
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/angles
	ros-melodic/catkin
	ros-melodic/cmake_modules
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
