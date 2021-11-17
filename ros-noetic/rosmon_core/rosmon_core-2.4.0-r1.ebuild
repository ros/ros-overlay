# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Node launcher and monitor for ROS. rosmon is a replacement\
\	\	for the ros[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xqms/rosmon-release/archive/release/noetic/${PN}/2.4.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cmake_modules
	ros-noetic/diagnostic_msgs
	ros-noetic/rosbash
	ros-noetic/roscpp
	ros-noetic/rosfmt
	ros-noetic/roslib
	ros-noetic/rosmon_msgs
	ros-noetic/rospack
	ros-noetic/std_msgs
	test? ( ros-noetic/catch_ros )
	test? ( ros-noetic/rostest )
	dev-libs/boost[python]
	dev-libs/boost[python]
	sys-libs/ncurses
	dev-libs/tinyxml
	dev-cpp/yaml-cpp
	test? ( dev-python/rospkg )
	test? ( dev-python/rospkg )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-lang/python
	dev-lang/python
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
