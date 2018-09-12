# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A GUI program for controlling a THORMANG3.\
	Initial posture, walking, m[...]"
HOMEPAGE="http://wiki.ros.org/thormang3_demo"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/${PN}/0.3.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/eigen_conversions
	ros-kinetic/geometry_msgs
	ros-kinetic/humanoid_nav_msgs
	ros-kinetic/interactive_markers
	ros-kinetic/qt_build
	ros-kinetic/robotis_controller_msgs
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/thormang3_action_script_player
	ros-kinetic/thormang3_feet_ft_module_msgs
	ros-kinetic/thormang3_foot_step_generator
	ros-kinetic/thormang3_manipulation_module_msgs
	ros-kinetic/thormang3_navigation
	ros-kinetic/thormang3_walking_module_msgs
	ros-kinetic/visualization_msgs
	dev-libs/boost
	dev-cpp/eigen
	dev-qt/qtcore:4
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
