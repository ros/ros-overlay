# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Projects laser readings into a point cloud, based on a set of recorded join[...]"
HOMEPAGE="http://www.ros.org/wiki/laser_joint_projector"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/${PN}/1.0.11-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/calibration_msgs
	ros-kinetic/cmake_modules
	ros-kinetic/geometry_msgs
	ros-kinetic/kdl_parser
	ros-kinetic/orocos_kdl
	ros-kinetic/roscpp_serialization
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roscpp
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
