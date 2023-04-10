# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Projects laser readings into a point cloud, based on a set of recorded join[...]"
HOMEPAGE="http://www.ros.org/wiki/laser_joint_projector"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/melodic/${PN}/1.0.11-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/calibration_msgs
	ros-melodic/cmake_modules
	ros-melodic/geometry_msgs
	ros-melodic/kdl_parser
	ros-melodic/orocos_kdl
	ros-melodic/roscpp_serialization
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roscpp
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
