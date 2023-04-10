# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Examples for working with Lanelet2"
HOMEPAGE="https://github.com/fzi-forschungszentrum-informatik/lanelet2.git"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/lanelet2-release/archive/release/noetic/${PN}/1.2.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/lanelet2_core
	ros-noetic/lanelet2_io
	ros-noetic/lanelet2_matching
	ros-noetic/lanelet2_projection
	ros-noetic/lanelet2_python
	ros-noetic/lanelet2_routing
	ros-noetic/lanelet2_traffic_rules
	ros-noetic/rosbash
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/mrt_cmake_modules
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
