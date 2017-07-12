# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Tests for MAVROS package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/indigo/test_mavros/0.17.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( BSD GPL-3 LGPL-3 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/control_toolbox
	ros-indigo/eigen_conversions
	ros-indigo/geometry_msgs
	ros-indigo/mavros
	ros-indigo/mavros_extras
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/angles
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

