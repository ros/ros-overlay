# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="The katana_moveit_ikfast_plugin package"
HOMEPAGE="http://wiki.ros.org/katana_moveit_ikfast_plugin"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_moveit_ikfast_plugin/1.1.2-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="( BSD Apache-1.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/moveit_core
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/tf_conversions
	virtual/lapack
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

