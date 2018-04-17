# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package is a sensor module for force torque sensors on feet."
HOMEPAGE="http://wiki.ros.org/thormang3_feet_ft_module"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ati_ft_sensor
	ros-kinetic/cmake_modules
	ros-kinetic/robotis_controller_msgs
	ros-kinetic/robotis_framework_common
	ros-kinetic/robotis_math
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/thormang3_feet_ft_module_msgs
	ros-kinetic/thormang3_kinematics_dynamics
	dev-libs/boost
	dev-cpp/eigen
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
