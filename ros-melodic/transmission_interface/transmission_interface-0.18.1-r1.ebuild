# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Transmission Interface."
HOMEPAGE="https://github.com/ros-controls/ros_control/wiki"
SRC_URI="https://github.com/ros-gbp/ros_control-release/archive/release/melodic/${PN}/0.18.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/hardware_interface
	ros-melodic/pluginlib
	ros-melodic/roscpp
	test? ( ros-melodic/resource_retriever )
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
