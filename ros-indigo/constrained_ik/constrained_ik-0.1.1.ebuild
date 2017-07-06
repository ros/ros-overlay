# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Constraint-based IK solver.  Good for high-DOF robots or underconstrained tasks.'"
HOMEPAGE="http://ros.org/wiki/constrained_ik"
SRC_URI="https://github.com/ros-industrial-release/industrial_moveit-release/archive/release/indigo/constrained_ik/0.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/dynamic_reconfigure
	ros-indigo/eigen_conversions
	ros-indigo/industrial_collision_detection
	ros-indigo/kdl_parser
	ros-indigo/moveit_core
	ros-indigo/moveit_ros_planning
	ros-indigo/orocos_kdl
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/tf_conversions
	ros-indigo/urdf
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

