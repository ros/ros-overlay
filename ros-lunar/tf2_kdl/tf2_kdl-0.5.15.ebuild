# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="KDL binding for tf2"
HOMEPAGE="http://ros.org/wiki/tf2"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2_kdl/0.5.15-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/cmake_modules
	ros-lunar/orocos_kdl
	ros-lunar/tf2
	ros-lunar/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

