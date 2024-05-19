# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Package for extracting the factory calibration from a UR robot and change i[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UniversalRobots/Universal_Robots_ROS_Driver-release/archive/release/noetic/${PN}/2.1.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/roscpp
	ros-noetic/ur_client_library
	ros-noetic/ur_robot_driver
	test? ( ros-noetic/rosunit )
	dev-cpp/eigen
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
