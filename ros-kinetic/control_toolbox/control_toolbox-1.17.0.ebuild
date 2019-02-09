# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The control toolbox contains modules that are useful across all controllers."
HOMEPAGE="http://ros.org/wiki/control_toolbox"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/1.17.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/control_msgs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/message_runtime
	ros-kinetic/realtime_tools
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	test? ( ros-kinetic/rosunit )
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
