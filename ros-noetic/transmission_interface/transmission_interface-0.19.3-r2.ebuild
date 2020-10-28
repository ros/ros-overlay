# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Transmission Interface."
HOMEPAGE="https://github.com/ros-controls/ros_control/wiki"
SRC_URI="https://github.com/ros-gbp/ros_control-release/archive/release/noetic/${PN}/0.19.3-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/hardware_interface
	ros-noetic/pluginlib
	ros-noetic/roscpp
	test? ( ros-noetic/resource_retriever )
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
