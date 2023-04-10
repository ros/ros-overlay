# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Stores the data from a series of laser scan messages in a dense representat[...]"
HOMEPAGE="http://www.ros.org/wiki/pr2_dense_laser_snapshotter"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/melodic/${PN}/1.0.11-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dense_laser_assembler
	ros-melodic/pr2_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
