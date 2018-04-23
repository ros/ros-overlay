# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS packages for the robotis_op3_tools \(meta package\)"
HOMEPAGE="http://wiki.ros.org/robotis_op3_tools"
SRC_URI="https://github.com/ROBOTIS-GIT-release/${PN}-release/archive/release/kinetic/${PN}/0.2.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/op3_action_editor
	ros-kinetic/op3_camera_setting_tool
	ros-kinetic/op3_gui_demo
	ros-kinetic/op3_navigation
	ros-kinetic/op3_offset_tuner_client
	ros-kinetic/op3_offset_tuner_server
	ros-kinetic/op3_web_setting_tool
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
