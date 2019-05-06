# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Transmission Interface."
HOMEPAGE="https://github.com/ros-controls/ros_control/wiki"
SRC_URI="https://github.com/ros-gbp/ros_control-release/archive/release/indigo/${PN}/0.9.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Modified BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/pluginlib
	ros-indigo/resource_retriever
	ros-indigo/roscpp
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/hardware_interface
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
