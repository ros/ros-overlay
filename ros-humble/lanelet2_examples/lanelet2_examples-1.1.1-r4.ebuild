# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Examples for working with Lanelet2"
HOMEPAGE="https://github.com/fzi-forschungszentrum-informatik/lanelet2.git"
SRC_URI="https://github.com/ros2-gbp/lanelet2-release/archive/release/humble/${PN}/1.1.1-4.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/lanelet2_core
	ros-humble/lanelet2_io
	ros-humble/lanelet2_projection
	ros-humble/lanelet2_python
	ros-humble/lanelet2_routing
	ros-humble/lanelet2_traffic_rules
	ros-humble/ros2cli
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_core
	ros-humble/mrt_cmake_modules
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
