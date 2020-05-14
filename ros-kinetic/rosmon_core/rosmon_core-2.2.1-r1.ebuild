# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Node launcher and monitor for ROS. rosmon is a replacement\
\	\	for the ros[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xqms/rosmon-release/archive/release/kinetic/${PN}/2.2.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/diagnostic_msgs
	ros-kinetic/rosbash
	ros-kinetic/roscpp
	ros-kinetic/rosfmt
	ros-kinetic/roslib
	ros-kinetic/rosmon_msgs
	ros-kinetic/rospack
	ros-kinetic/std_msgs
	test? ( ros-kinetic/catch_ros )
	test? ( ros-kinetic/rostest )
	dev-libs/boost[python]
	sys-libs/ncurses
	dev-libs/tinyxml
	dev-cpp/yaml-cpp
	test? ( dev-python/rospkg )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-lang/python
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
