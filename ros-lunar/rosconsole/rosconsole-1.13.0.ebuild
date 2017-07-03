# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="ROS console output library."
HOMEPAGE="http://www.ros.org/wiki/rosconsole"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosconsole/1.13.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/cpp_common
	ros-lunar/rosbuild
	ros-lunar/rostime
	dev-libs/apr
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rosunit
	dev-libs/boost
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

