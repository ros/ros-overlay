# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="OP3 default demo\
	It includes three demontrations\(soccer demo, vision [...]"
HOMEPAGE="http://wiki.ros.org/op3_demo"
SRC_URI="https://github.com/ROBOTIS-GIT-release/robotis_${PN}-release/archive/release/kinetic/${PN}/0.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/geometry_msgs
	ros-kinetic/op3_action_module_msgs
	ros-kinetic/op3_ball_detector
	ros-kinetic/op3_camera_setting_tool
	ros-kinetic/op3_manager
	ros-kinetic/op3_walking_module_msgs
	ros-kinetic/op3_web_setting_tool
	ros-kinetic/robotis_controller_msgs
	ros-kinetic/robotis_math
	ros-kinetic/ros_madplay_player
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
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
