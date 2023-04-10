# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_calibration package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/${PN}-release/archive/release/melodic/${PN}/1.0.11-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="TODO-CATKIN-PACKAGE-LICENSE"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dense_laser_assembler
	ros-melodic/laser_joint_processor
	ros-melodic/laser_joint_projector
	ros-melodic/pr2_calibration_launch
	ros-melodic/pr2_dense_laser_snapshotter
	ros-melodic/pr2_se_calibration_launch
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
