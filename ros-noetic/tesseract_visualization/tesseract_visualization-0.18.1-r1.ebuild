# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The tesseract_visualization package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/${PN}/0.18.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/tesseract_collision
	ros-noetic/tesseract_common
	ros-noetic/tesseract_environment
	ros-noetic/tesseract_scene_graph
	ros-noetic/tesseract_state_solver
	dev-cpp/eigen
	dev-libs/console_bridge
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/ros_industrial_cmake_boilerplate
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
