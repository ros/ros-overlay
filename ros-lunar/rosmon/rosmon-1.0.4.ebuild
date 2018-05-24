# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Node launcher and monitor for ROS. rosmon is a replacement\
\	\	for the ros[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xqms/${PN}-release/archive/release/lunar/${PN}/1.0.4-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/cmake_modules
	ros-lunar/message_generation
	ros-lunar/rosbash
	ros-lunar/roscpp
	ros-lunar/roslib
	ros-lunar/rospack
	ros-lunar/rqt_gui
	ros-lunar/rqt_gui_cpp
	ros-lunar/std_msgs
	test? ( ros-lunar/catch_ros )
	test? ( ros-lunar/rostest )
	dev-libs/boost
	sys-libs/ncurses
	dev-cpp/yaml-cpp
	test? ( dev-python/rospkg )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-lang/python
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
