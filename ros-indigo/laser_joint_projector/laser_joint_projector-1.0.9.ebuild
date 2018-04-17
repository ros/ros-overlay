# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Projects laser readings into a point cloud, based on a set of recorded join[...]"
HOMEPAGE="http://www.ros.org/wiki/laser_joint_projector"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/indigo/${PN}/1.0.9-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/calibration_msgs
	ros-indigo/cmake_modules
	ros-indigo/geometry_msgs
	ros-indigo/kdl_parser
	ros-indigo/orocos_kdl
	ros-indigo/roscpp_serialization
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roscpp
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
