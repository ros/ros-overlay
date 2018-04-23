# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Stores streaming data from a laser sensor in a\
	dense representation. T[...]"
HOMEPAGE="http://www.ros.org/wiki/dense_laser_assembler"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/${PN}/1.0.11-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/calibration_msgs
	ros-kinetic/roscpp
	ros-kinetic/roscpp_serialization
	ros-kinetic/sensor_msgs
	ros-kinetic/settlerlib
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
