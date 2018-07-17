# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Odometry slip compensation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation-release/archive/release/indigo/${PN}/0.2.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/neonavigation_common
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/trajectory_msgs
	test? ( ros-indigo/roslint )
	test? ( ros-indigo/rostest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
