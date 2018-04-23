# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The offset_tuner_server package"
HOMEPAGE="http://wiki.ros.org/thormang3_offset_tuner_server"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Tools-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamixel_sdk
	ros-kinetic/robotis_controller
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/thormang3_base_module
	ros-kinetic/thormang3_offset_tuner_msgs
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
