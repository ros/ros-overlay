# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The tesseract_kinematics package contains kinematics related libraries."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/${PN}/0.15.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/opw_kinematics
	ros-noetic/tesseract_common
	ros-noetic/tesseract_scene_graph
	ros-noetic/tesseract_state_solver
	test? ( ros-noetic/tesseract_support )
	test? ( ros-noetic/tesseract_urdf )
	dev-cpp/eigen
	dev-libs/console_bridge
	sci-libs/orocos_kdl
	dev-cpp/yaml-cpp
	test? ( dev-cpp/gtest )
	test? ( virtual/lapack )
"
DEPEND="${RDEPEND}
	ros-noetic/ros_industrial_cmake_boilerplate
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
