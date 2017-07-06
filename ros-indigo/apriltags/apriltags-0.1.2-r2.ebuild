# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A catkin version of the C++ apriltags library'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RIVeR-Lab-release/apriltags_ros-release/archive/release/indigo/apriltags/0.1.2-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-cpp/eigen
	media-libs/opencv
	media-libs/libv4l
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

