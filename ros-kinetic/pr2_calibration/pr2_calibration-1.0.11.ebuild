# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_calibration package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/${PN}-release/archive/release/kinetic/${PN}/1.0.11-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="TODO"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dense_laser_assembler
	ros-kinetic/laser_joint_processor
	ros-kinetic/laser_joint_projector
	ros-kinetic/pr2_calibration_launch
	ros-kinetic/pr2_dense_laser_snapshotter
	ros-kinetic/pr2_se_calibration_launch
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
