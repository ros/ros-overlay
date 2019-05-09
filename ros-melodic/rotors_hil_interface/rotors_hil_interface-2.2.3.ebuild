# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="RotorS Hardware-in-the-loop interface package"
HOMEPAGE="https://github.com/ethz-asl/rotors_simulator"
SRC_URI="https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/${PN}/2.2.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="ASL 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/mav_msgs
	ros-melodic/mavros
	ros-melodic/mavros_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
