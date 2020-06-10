# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS package providing access to the HEBI C++ API."
HOMEPAGE="http://docs.hebi.us/tools.html#cpp-api"
SRC_URI="https://github.com/HebiRobotics/${PN}_ros-release/archive/release/melodic/${PN}/3.2.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="HEBI C++ Software License (https://www.hebirobotics.com/softwarelicense)"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
