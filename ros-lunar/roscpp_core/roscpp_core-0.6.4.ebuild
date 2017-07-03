# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="Underlying data libraries for roscpp messages."
HOMEPAGE="http://www.ros.org/wiki/roscpp_core"
SRC_URI="https://github.com/ros-gbp/roscpp_core-release/archive/release/lunar/roscpp_core/0.6.4-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/cpp_common
	ros-lunar/roscpp_serialization
	ros-lunar/roscpp_traits
	ros-lunar/rostime
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

