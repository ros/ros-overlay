# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ros-cmake

DESCRIPTION="Implementation of phase-sequence tasks for the Robotics Middleware Framework"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_task-release/archive/release/humble/${PN}/2.1.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/nlohmann_json_schema_validator_vendor
	ros-humble/rmf_api_msgs
	ros-humble/rmf_task
	test? ( ros-humble/ament_cmake_catch2 )
	test? ( ros-humble/ament_cmake_uncrustify )
	dev-cpp/nlohmann_json
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
