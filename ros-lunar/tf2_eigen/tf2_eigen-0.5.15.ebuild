# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="tf2_eigen"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2_eigen/0.5.15-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cmake_modules
	ros-lunar/geometry_msgs
	ros-lunar/tf2
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-cpp/eigen
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

