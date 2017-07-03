# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="This package contains test and demo programs for the katana_driver stack."
HOMEPAGE="http://ros.org/wiki/katana_tutorials"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_tutorials/1.1.2-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/control_msgs
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

