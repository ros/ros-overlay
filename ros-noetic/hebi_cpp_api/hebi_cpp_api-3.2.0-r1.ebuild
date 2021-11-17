# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A ROS package providing access to the HEBI C++ API."
HOMEPAGE="http://docs.hebi.us/tools.html#cpp-api"
SRC_URI="https://github.com/HebiRobotics/${PN}_ros-release/archive/release/noetic/${PN}/3.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="HEBI C++ Software License (https://www.hebirobotics.com/softwarelicense)"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
