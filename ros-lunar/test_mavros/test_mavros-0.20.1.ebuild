# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Tests for MAVROS package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/lunar/test_mavros/0.20.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="( BSD GPL-3 LGPL-3 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/control_toolbox
	ros-lunar/eigen_conversions
	ros-lunar/geometry_msgs
	ros-lunar/mavros
	ros-lunar/mavros_extras
	ros-lunar/roscpp
	ros-lunar/std_msgs
	ros-lunar/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/angles
	ros-lunar/catkin
	ros-lunar/cmake_modules
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
