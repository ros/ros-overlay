# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="ROS packaging system"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros-release/archive/release/lunar/ros/1.14.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/catkin
	ros-lunar/mk
	ros-lunar/rosbash
	ros-lunar/rosboost_cfg
	ros-lunar/rosbuild
	ros-lunar/rosclean
	ros-lunar/roscreate
	ros-lunar/roslang
	ros-lunar/roslib
	ros-lunar/rosmake
	ros-lunar/rosunit
"
DEPEND="${RDEPEND}
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

